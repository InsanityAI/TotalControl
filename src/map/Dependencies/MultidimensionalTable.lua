if Debug and Debug.beginFile then Debug.beginFile("MDTable") end
--[[-----------------------------------------------------------------------------------------------------------------------------------------------
*   -------------------------------
*   | Multidimensional Table v1.1 |
*   -------------------------------
*
*    by Eikonium
*        --> https://www.hiveworkshop.com/threads/multidimensional-table.353717/
*
*        - Multidimensional tables, short MDTables, are tables that allow for direct access of multiple table dimensions without the need of manual subtable creation.
*        - MDTables also provide the option of choosing a default value to be returned upon accessing non-existing keys. That default value is allowed to depend on the keys accessed.
*        - Finally, MDTables come with a custom pairs-iteration, which grants access to all combinations of keys that hold a value. See below for further details.
*
*    MDTable.create(numDimensions: integer) --> table
*        - Standard use:
*          Creates an MDTable with the specified number of dimensions. E.g. "T = MDTable.create(3)" will allow you to read from and write to T[key1][key2][key3] for any arbitrary set of 3 keys.
*          You can think of it like a tree with constant depth that only allows you to write into the "leaf level" (using exactly the number of keys as dimensions specified).
*        - In the example with 3 dimensions, you should only write to T[key1][key2][key3], never to T[key1] or T[key1][key2].
*          Reading is fine on every level, but you are probably not interested in the subtable stored in T[key1].
*          You can however manually save further tables in T[key1][key2][key3] (at leaf level).
*        - MDTables will automatically create subtables on demand, i.e. upon reading from or writing to a combination of keys.
*    MDTable.create(numDimensions: integer, defaultValue: function|any) --> table
*        - Default Values:
*          Reading a nil value from the MDTable will instead return the specified defaultValue (which is nil, if not specified).
*        - Function-valued default value:
*          If defaultValue is a function, that function's return value will be returned. The function will be called with all requested keys as its arguments.
*          E.g. if T is an MDTable with 3 dimensions and defaultValue is a function, accessing an empty slot T[key1][key2][key3] will return defaultValue(key1,key2,key3).
*    MDTable.create(numDimensions: integer, defaultValue: function|any, persistDefault_yn: boolean) --> table
*        - Persisting default values:
*          When MDTables return the default values, they normally don't save it permanently.
*          You can make them do so by setting persistDefault_yn to true.
*        - Example: Let T be an MDTable with 3 dimensions, defaultValue = function(...) return {...} end, persistDefault_yn = true.
*          Now reading a nil-value at T[key1][key2][key3] will permanently save {key1,key2,key3} in that table slot.
*    MDTable.create(numDimensions: integer, defaultValue: function|any, persistDefault_yn: boolean, syncedLoop_yn: boolean) --> table
*        - Synced Loops:
*          Setting the syncedLoop_yn-parameter to true will make the iteration synchronous in multiplayer games (at the cost of some overhead), which prevents desyncs.
*          Hence it should be set to true, if and only if you plan to iterate over it in a multiplayer game. See comments on iteration below.
*          This setting requires the SyncedTable-library (https://www.hiveworkshop.com/threads/syncedtable.332894/).
*
*    for key1, key2, ..., key_n, value in pairs(<MDTable>) do [doStuff] end
*        - You can iterate over an MDTable by using Lua's native pairs(). Loop-parameters are all keys plus the value at leaf level.
*        - Example:
*           local T = MDTable.create(3, 42) --creates an MDTable with 3 dimensions and default value 42.
*           T[1][2][3] = "Hello"
*           T[1]["bla"][Player(0)] = "World"
*           print(T[2][3][4]) --> prints the defaultValue "42", but doesn't add that value to the table. Hence, it will not be iterated below.
*           for key1, key2, key3, value in pairs(T) do
*               print(key1, key2, key3, value) --will print    "1    2    3    Hello"    and    "1   bla   Player(0)   World"
*           end
*        - As all subtables of MDTables up to leaf level are also MDTables, you can iterate over subtables with the same method. Note that subtables have a lower dimension.
*           --Following the example from above
*           for key1, key2, value in pairs(T[1]) do
*               print(key1, key2, value) --> will print "2   3   Hello"
*           end
*
*   -------------------------
*   | nestedSet & nestedGet |
*   -------------------------
*
*   table.nestedSet(t, ..., value)
*        - Saves the specified value at the specified keys within t. Creates subtables, if necessary.
*        - E.g. nestedSet(t, 1, 2, 3) is equivalent to t[1][2] = 3 and will save a subtable in t[1], if not already present.
*   table.nestedGet(t, ...)
*        - Returns the value that t has stored at the specified keys. Returns nil, if any of subtable is nil.
*        - E.g. nestedGet(t, 1, 2) returns t[1][2] (or nil, if t[1] is nil).
-------------------------------------------------------------------------------------------------------------------------------------------------]]
do
    local nestedGet
    nestedGet = function(t, k, ...)
        if k == nil and select('#', ...) == 0 then
            return t
        elseif t[k] == nil then
            return nil
        end
        return nestedGet(t[k], ...)
    end
    ---Multidimensional get-operation.
    ---
    ---Returns the value from the specified table at the specified set of keys.
    ---E.g. table.nestedGet(t, 1,2,3) will return t[1][2][3].
    ---If any of the subtables in the path are nil, table.nestedGet will return nil.
    ---Using this function frees you from checking every dimension for whether it contains a subtable or not.
    ---@param t table
    ---@param ... any keys to access from t
    ---@return any value
    table.nestedGet = function(t, ...) return nestedGet(t,...) end

    local nestedSet
    nestedSet = function(t, k, v, ...)
        if select('#', ...) == 0 then
            t[k] = v
        else
            if t[k] == nil then --don't use or-operator. Might overwrite false-key.
                t[k] = {}
            end
            nestedSet(t[k], v, ...)
        end
    end
    ---Multidimensional set-operation.
    ---
    ---Sets the table at the specified set of keys to the specified value. Creates subtables, where necessary.
    ---E.g. table.nestedSet(t, 1, 2, 3, 42) will set t[1][2][3] = 42 and create subtables at t[1] and t[1][2], if not already present.
    ---Using this function frees you from checking for existing subtables.
    ---@param t table
    ---@param ... any keys to access and value to set. The last parameter will be taken as the value.
    table.nestedSet = function(t, ...) nestedSet(t, ...) end

    ---@class MDTable
    MDTable = {}

    local unpack = table.unpack

    --Prepare table holding meta-information about every Multidimensional table and its subtables.
    --Every subtable has a depth - the base table starts at 1 and the value increases for 1 for each nested level.
    --The number of dimensions is referred to as maxDepth. It equals the depth at which the actual values are stored (instead of further subtables).
    --The user can choose a default value to be returned, when no value has been saved in a certain combination of keys before. Returning a default value will persist it in the table, if specified in the create-method.
    --SyncedTables also need to save their old __index and __pairs metamethods to allow the new methods to call those.
    local metaInfo = {} ---@type table<table,{depth:integer,maxDepth:integer,default:any,persistDefault:boolean,oldIndex:function,oldPairs:function}>

    ----------------------------------------
    --| Implementation for normal tables |--
    ----------------------------------------

    -- MDTables have a different implementation for normal tables and SyncedTables. Normal tables use the class itself as their metatable. SyncedTables manipulate the metatable they already have.

    --The index-metamethod creates new subtables or returns the default-value, depending on which nested level the read access has been conducted.
    --As the same metatable is applied to all subtables, the parameter t can be any subtable on any level.
    MDTable.__index = function(t, key)
        local tMetaInfo = metaInfo[t]
        if tMetaInfo.depth == tMetaInfo.maxDepth then
            local default = tMetaInfo.default
            tMetaInfo[tMetaInfo.depth] = key --add current accessed key to the table to add it to the unpacking. This will be overwritten on every call, but doesn't matter.
            local defaultVal = (type(default) == 'function' and default(unpack(tMetaInfo, 1, tMetaInfo.depth))) or default --return default-value for full level read access
            if tMetaInfo.persistDefault then
                t[key] = defaultVal
            end
            return defaultVal
        else
            local newDim = {} --create new subtable on read access below full level
            t[key] = newDim --save subtable to requested key
            --prepare meta info for newDim
            local newMetaInfo = {
                default = tMetaInfo.default         --pass default value from t to its new subtable
                ,   depth = tMetaInfo.depth + 1     --depth of subtable is 1 higher than depth of t (obviously)
                ,   maxDepth = tMetaInfo.maxDepth   --pass max depth from t to subtable
                ,   persistDefault = tMetaInfo.persistDefault --pass information on whether to persist default value to subtable
            }
            --copy path of t to subtable
            for i = 1, tMetaInfo.depth - 1 do
                newMetaInfo[i] = tMetaInfo[i]
            end
            newMetaInfo[tMetaInfo.depth] = key --last key of the "path" to the new subtable
            metaInfo[newDim] = newMetaInfo
            setmetatable(newDim, MDTable) --apply same metatable to subtable
            return newDim --return new subtable, so the read access can continue as normal (and probably involves further nested calls of __index)
        end
    end

    --The pairs-metamethod is supposed to work for any number of dimensions, so we need recursion to get to a full level set of keys holding a value on max level.
    local loopRecursion

    ---Recursive loop for Nested Tables used by the iterator function for Multidimensinal Table.
    ---The loop reads all combinations of keys that hold a value on max level, returns that combination to the iterator and pauses the loop using coroutines, until the iterator resumes it.
    ---@param t table t can be any subtable, it's a recursion after all
    ---@param syncedLoop_yn boolean true, if loop is conducted on a multidimensional SyncedTable
    ---@param returnVals table holds all keys that the recursion has already gone through, so that they can be passed via table.unpack on demand
    ---@param loopLevel integer dimension at which the recursion is currently operating. Equals the subtable depth in case the pairs-function was used on the base table.
    loopRecursion = function(t, syncedLoop_yn, returnVals, loopLevel)
        local tMetaInfo = metaInfo[t]
        local iter = syncedLoop_yn and tMetaInfo.oldPairs() or next --iterator to be used depends on whether we deal with a normal table or a SyncedTable.
        local k, v = iter(t) --first key-value-pair to loop through at the current loop level
        --if t sits below max level, we loop through all (key,subtable)-pairs of t.
        if tMetaInfo.depth < tMetaInfo.maxDepth then
            while k ~= nil do --"while k do" won't do it - k can be "false".
                returnVals[loopLevel] = k --remember the key in the returnVals table
                loopRecursion(v, syncedLoop_yn, returnVals, loopLevel + 1) --every subtable must conduct a full loop itself
                k, v = iter(t, k) --get next key-subtable-pair
            end
        else
        --if t sits at max level, we loop through all (key,value)-pairs of t.
            while k ~= nil do
                returnVals[loopLevel] = k --remember the key in the returnVals table
                returnVals[loopLevel+1] = v --at max level, also remember the value
                coroutine.yield(unpack(returnVals, 1, loopLevel+1)) --return the complete set of keys plus final value to the iterator and pause the loop until further request
                k, v = iter(t, k) --get next key-value-pair
            end
        end
        --when the first call of the recursive loop ends, all inner recursion has already finished -> fo a final yield on the coroutine to put it to dead state
        if loopLevel == 1 then
            coroutine.yield()
        end
    end

    --Define behaviour of the pairs-function for Multidimensional tables based on normal tables.
    --The pairs-function is supposed to loop through all combinations of keys that hold a value at max level.
    --It enables the following syntax: for key1, key2, ..., key_n, value in pairs(T) do ... end
    MDTable.__pairs = function(t)
        local cor = coroutine.create(loopRecursion) --we need a coroutine to pause the loop recursion between every request of the iterator function
        local returnVals = {} --table to hold all return values for this specific loop. Passed to the recursion.
        return function()
            --successful coroutine calls return true plus the yielded values, so we need to return everything after the first value
            return select(2,coroutine.resume(cor, t, false, returnVals, 1))
        end, t, nil
    end

    --Allows to call the Multidimensional table directly via T(key1,key2,...,key_n)
    MDTable.__call = function(t, ...)
        return table.nestedGet(t, ...)
    end

    ---------------------------------------
    --| Implementation for SyncedTables |--
    ---------------------------------------

    --SyncedTables need special treatment, as they all have their own individual metatable with __index and __pairs already defined.
    --We basically define new index and pairs for the SyncedTable by using the old instance.
    local prepareSyncedTable

    local syncedIndex = function(t, key)
        local tMetaInfo = metaInfo[t]
        local oldIndexVal = tMetaInfo.oldIndex(t, key)
        --if the SyncedTable holds a value for the given key, return that value
        if oldIndexVal then
            return oldIndexVal
        --return default value, if there is no stored value and the user is reading at max level
        elseif tMetaInfo.depth >= tMetaInfo.maxDepth then
            local default = tMetaInfo.default
            tMetaInfo[tMetaInfo.depth] = key --add current accessed key to tMetaInfo to add it to the unpacking below. The key at full depth will be overwritten on every call, but doesn't matter.
            local defaultVal = (type(default) == 'function' and default(unpack(tMetaInfo, 1, tMetaInfo.depth))) or default
            if tMetaInfo.persistDefault then
                t[key] = defaultVal --triggers SyncedTable newIndex metamethod
            end
            return defaultVal
        --create sub-SyncedTable, if not already present and reading below max level
        else
            local newDim = SyncedTable.create()
            t[key] = newDim --don't use rawset. This must trigger SyncedTable __newindex to work.
            local newMetaInfo = {
                default = tMetaInfo.default
                ,   depth = tMetaInfo.depth + 1
                ,   maxDepth = tMetaInfo.maxDepth
                ,   persistDefault = tMetaInfo.persistDefault
            }
            metaInfo[newDim] = newMetaInfo
            prepareSyncedTable(newDim) --again manipulate metatables of new SyncedTable
            --copy path from tMetaInfo to newMetaInfo
            for i = 1, tMetaInfo.depth - 1 do
                newMetaInfo[i] = tMetaInfo[i]
            end
            newMetaInfo[tMetaInfo.depth] = key
            return newDim
        end
    end

    --Define multidimensional pairs-function. Uses the same loopRecursion as for MDTables based on normal tables.
    local syncedPairs = function(t)
        local cor = coroutine.create(loopRecursion)
        local returnVals = {}
        return function()
            --successful coroutine calls return true plus the yielded values, so we need to return everything after the first value
            return select(2,coroutine.resume(cor, t, true, returnVals, 1))
        end, t, nil
    end

    ---Manipulates the metatable of a SyncedTable in a way that it allows for nested access.
    ---Writes into metaInfo[t], so requires that table to already exist.
    ---@param t table actually SyncedTable, but we don't mention the true type to prevent "undefined type" errors, when SyncedTables is not being used (optional dependency).
    prepareSyncedTable = function(t)
        local mt = getmetatable(t) --original metatable of the SyncedTable to be manipulated
        local tMetaInfo = metaInfo[t]
        tMetaInfo.oldIndex = mt.__index --original __index
        tMetaInfo.oldPairs = mt.__pairs --original __pairs-function must be saved somewhere to be accessible from within the loop recursion
        --SyncedTable __index triggers on every read action, because the table itself is kept empty by design. That means we must also deal with the case where the SyncedTable actually holds a value for the requested key.
        mt.__index = syncedIndex
        mt.__pairs = syncedPairs
        mt.__call = MDTable.__call
    end

    ---Create a new Multidimensional Table.
    ---@param numDimensions integer number of dimensions accessible on the new Multidim Table
    ---@param defaultValue? function|any default: nil. Default value to return at leaf level access, when the requested combination of keys has no value assigned. If function: calls that function and uses its return value.
    ---@param persistDefault_yn? boolean default: false. set to true to persist the default value in the table at the requested combination of keys upon read access, when there wasn't yet any value assigned.
    ---@param syncedLoop_yn? boolean default: false. set to true to allow for multiplayer-synced pairs-loop. Requires SyncedTable. Set to false, if you create a singleplayer game or if you don't plan to loop over this table.
    ---@return table
    MDTable.create = function(numDimensions, defaultValue, persistDefault_yn, syncedLoop_yn)
        local newTable
        --If user desires synced loop and the SyncedTable-library is present, create SyncedTable and manipulate its metatables.
        if syncedLoop_yn and SyncedTable then
            newTable = SyncedTable.create()
            metaInfo[newTable] = {}
            prepareSyncedTable(newTable) --manipulating existing metatable instead of assigning the class as metatable.
        else
        --If user desires normal loop or no loop, create normal table and set standard metatable.
            newTable = {}
            metaInfo[newTable] = {}
            setmetatable(newTable, MDTable)
        end
        metaInfo[newTable].depth = 1  --the base table has depth 1
        metaInfo[newTable].maxDepth = numDimensions --maxdepth is the dimension chosen by the user
        metaInfo[newTable].default = defaultValue --default value for max level access
        metaInfo[newTable].persistDefault = persistDefault_yn or false --tells, if the default value shall be saved upon read access
        return newTable
    end
end
if Debug and Debug.endFile then Debug.endFile() end