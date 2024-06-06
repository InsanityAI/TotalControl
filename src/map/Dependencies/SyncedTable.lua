if Debug then Debug.beginFile "SyncedTable" end
OnInit.module("SyncedTable", function()
    --SyncedTable v1.0 by Eikonium. https://www.hiveworkshop.com/threads/lua-syncedtable.332894/

    --comparison function that allows sorting a set of objects that already have a natural order.
    local function comparisonFunc(a, b)
        local t1, t2 = type(a), type(b)
        if t1 == t2 then
            return a < b
        else
            return t1 < t2
        end
    end

    ---@class SyncedTable
    SyncedTable = {}

    ---Creates a table with a multiplayer-synchronized pairs-function, i.e. you can iterate over it via pairs(table) without fearing desyncs.
    ---After creation, you can use it like any other table.
    ---The implementation adds overhead to creating the table, adding and removing elements, but keeps the loop itself very performant. So you obviously should only used syncedTables, if you plan to iterate over it.
    ---You are both allowed to add and remove elements during a pairs()-loop.
    ---Specifying an existing table as input parameter will convert that table to a syncedTable. This only works for input tables, where all keys are sortable via the "<"-relation, i.e. numbers, strings and objects listening to some __lt-metamethod.
    ---@param existingTable? table any lua table you want to convert to a syncedTable. The table is required to only contain keys that can be sorted via the '<'-relation. E.g. you might write SyncedTable.create{x = 10, y = 3}.
    ---@return SyncedTable
    function SyncedTable.create(existingTable)
        local new = {}
        local metatable = { class = SyncedTable }
        local data = {}
        --orderedKeys and keyToIndex don't need to be weak tables. They reference keys if and only if those keys are used in data.
        local orderedKeys = {} --array of all keys, defining loop order.
        local keyToIndex = {}  --mirrored orderedKeys, i.e. keyToIndex[key] = int <=> orderedKeys[int] = key. This is used to speed up the process of removing (key, value)-pairs from the syncedTable (to prevent the need of searching the key in orderedKeys).
        local numKeys = 0

        --If existingTable was provided, register all keys from the existing table to the keyToIndex and orderedKeys help tables.
        if existingTable then
            --prepare orderedKeys array by sorting all existing keys
            for k, v in pairs(existingTable) do
                numKeys = numKeys + 1
                orderedKeys[numKeys] = k --> the resulting orderedKeys is asynchronous at this point
                data[k] = v
            end
            table.sort(orderedKeys, comparisonFunc) --result is synchronous for all players
            --fill keyToIndex accordingly
            for i = 1, numKeys do
                keyToIndex[orderedKeys[i]] = i
            end
        end

        --Catch read action
        metatable.__index = function(t, key)
            return data[key]
        end

        --Catch write action
        metatable.__newindex = function(t, key, value)
            --Case 1: User tries to remove an existing (key,value) pair by writing table[key] = nil.
            if data[key] ~= nil and value == nil then
                --swap last element to the slot being removed (in the iteration order array)
                local i = keyToIndex[key]             --slot of the key, which is getting removed
                keyToIndex[orderedKeys[numKeys]] = i  --first set last slot to i
                keyToIndex[key] = nil                 --afterwards nil current key (has to be afterwards, when i == numKeys)
                orderedKeys[i] = orderedKeys[numKeys] --i refers to the old keyToIndex[key]
                orderedKeys[numKeys] = nil
                numKeys = numKeys - 1
                --Case 2: User tries to add a new key to the table (i.e. table[key] doesn't yet exist and both key and value are not nil)
            elseif data[key] == nil and key ~= nil and value ~= nil then
                numKeys = numKeys + 1
                keyToIndex[key] = numKeys
                orderedKeys[numKeys] = key
            end
            --Case 3: User tries to change an existing key to a different non-nil value (i.e. table[existingKey] = value ~= nil)
            -- -> no action necessary apart from the all cases line
            --Case 4: User tries to set table[nil]=value or table[key]=nil for a non-existent key (would be case 1 for an existent key)
            -- -> don't do anything.
            --In all cases, do the following:
            data[key] = value --doesn't have any effect for case 4.
        end

        --Define, how the pairs iteration works
        metatable.__pairs = function(t)
            local i = 0
            local latestKey
            return function()
                if latestKey == orderedKeys[i] then
                    i = i +
                        1 --only increase i, when the last iterated key is still part of the table. Otherwise use the same i again. This allows the removal of (key,value)-pairs inside the pairs()-iteration.
                end
                latestKey = orderedKeys[i]
                return orderedKeys[i], data[orderedKeys[i]]
            end, t, nil
        end

        setmetatable(new, metatable)
        return new
    end

    ---Returns true, if the input argument is a SyncedTable, and false otherwise.
    ---@param anyObject any
    ---@return boolean isSyncedTable
    SyncedTable.isSyncedTable = function(anyObject)
        local metatable = getmetatable(anyObject)
        return metatable and metatable['class'] == SyncedTable
    end

    --Allows writing SyncedTable() instead of SyncedTable.create().
    setmetatable(SyncedTable, {
        __call = function(func, t)
            return SyncedTable.create(t)
        end
    })
end)
if Debug then Debug.endFile() end
