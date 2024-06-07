if Debug then Debug.beginFile "TotalControl/Warcraft3/Override/Random" end
OnInit.module("TotalControl/Warcraft3/Override/Random", function(require)
    -- ============================================================================
    --  Randomization API

    GetRandomInt = math.random
    GetRandomReal = function(lowBound, highBound)
        return lowBound + math.random() * highBound
    end

    -- TODO
    ---@return unitpool
    function CreateUnitPool() end -- (native)

    ---@param whichPool unitpool
    function DestroyUnitPool(whichPool) end -- (native)

    ---@param whichPool unitpool
    ---@param unitId integer
    ---@param weight number
    function UnitPoolAddUnitType(whichPool, unitId, weight) end -- (native)

    ---@param whichPool unitpool
    ---@param unitId integer
    function UnitPoolRemoveUnitType(whichPool, unitId) end -- (native)

    ---@param whichPool unitpool
    ---@param forWhichPlayer player
    ---@param x number
    ---@param y number
    ---@param facing number
    ---@return unit
    function PlaceRandomUnit(whichPool, forWhichPlayer, x, y, facing) end -- (native)

    ---@return itempool
    function CreateItemPool() end -- (native)

    ---@param whichItemPool itempool
    function DestroyItemPool(whichItemPool) end -- (native)

    ---@param whichItemPool itempool
    ---@param itemId integer
    ---@param weight number
    function ItemPoolAddItemType(whichItemPool, itemId, weight) end -- (native)

    ---@param whichItemPool itempool
    ---@param itemId integer
    function ItemPoolRemoveItemType(whichItemPool, itemId) end -- (native)

    ---@param whichItemPool itempool
    ---@param x number
    ---@param y number
    ---@return item
    function PlaceRandomItem(whichItemPool, x, y) end -- (native)

    --  Choose any random unit/item. (NP means Neutral Passive)
    ---@param level integer
    ---@return integer
    function ChooseRandomCreep(level) end -- (native)

    ---@return integer
    function ChooseRandomNPBuilding() end -- (native)

    ---@param level integer
    ---@return integer
    function ChooseRandomItem(level) end -- (native)

    ---@param whichType itemtype
    ---@param level integer
    ---@return integer
    function ChooseRandomItemEx(whichType, level) end -- (native)

    SetRandomSeed = math.randomseed
end)
if Debug then Debug.endFile() end
