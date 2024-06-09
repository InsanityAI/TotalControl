if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/RandomizationNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/RandomizationNatives", function(require)
    ---@class RandomizationNatives
    local RandomizationNatives = { Math = {}, UnitPool = {}, ItemPool = {} }
    RandomizationNatives.Math.GetInt = GetRandomInt
    RandomizationNatives.Math.GetReal = GetRandomReal

    RandomizationNatives.UnitPool.Create = CreateUnitPool
    RandomizationNatives.UnitPool.Destroy = DestroyUnitPool
    RandomizationNatives.UnitPool.AddUnitType = UnitPoolAddUnitType
    RandomizationNatives.UnitPool.RemoveUnitType = UnitPoolRemoveUnitType
    RandomizationNatives.UnitPool.GetUnit = PlaceRandomUnit

    RandomizationNatives.ItemPool.Create = CreateItemPool
    RandomizationNatives.ItemPool.Destroy = DestroyItemPool
    RandomizationNatives.ItemPool.AddItemType = ItemPoolAddItemType
    RandomizationNatives.ItemPool.RemoveItemType = ItemPoolRemoveItemType
    RandomizationNatives.ItemPool.GetItem = PlaceRandomItem

    RandomizationNatives.GetRandomCreepType = ChooseRandomCreep
    RandomizationNatives.GetRandomNeutralBuildingType = ChooseRandomNPBuilding
    RandomizationNatives.GetRandomItemType = ChooseRandomItem
    RandomizationNatives.GetRandomItemTypeEx = ChooseRandomItemEx
    RandomizationNatives.SetSeed = SetRandomSeed
    return RandomizationNatives
end)
if Debug then Debug.endFile() end
