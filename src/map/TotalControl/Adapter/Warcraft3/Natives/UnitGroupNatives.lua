if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/UnitGroupNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/UnitGroupNatives", function (require)
    ---@class UnitGroupNatives
    local UnitGroupNatives = {}
    UnitGroupNatives.Create = CreateGroup
    UnitGroupNatives.Destroy = DestroyGroup
    UnitGroupNatives.AddUnit = GroupAddUnit
    UnitGroupNatives.RemoveUnit = GroupRemoveUnit
    UnitGroupNatives.AddGroup = BlzGroupAddGroupFast
    UnitGroupNatives.RemoveGroup = BlzGroupRemoveGroupFast
    UnitGroupNatives.Clear = GroupClear
    UnitGroupNatives.GetSize = BlzGroupGetSize
    UnitGroupNatives.GetUnitAt = BlzGroupUnitAt
    UnitGroupNatives.FirstUnit = FirstOfGroup
    UnitGroupNatives.ForEachUnit = ForGroup
    UnitGroupNatives.ContainsUnit = IsUnitInGroup
    UnitGroupNatives.EnumUnitsOfType = GroupEnumUnitsOfType
    UnitGroupNatives.EnumUnitsOfTypeCounted = GroupEnumUnitsOfTypeCounted
    UnitGroupNatives.EnumUnitsInRect = GroupEnumUnitsInRect
    UnitGroupNatives.EnumUnitsInRectCounted = GroupEnumUnitsInRectCounted
    UnitGroupNatives.EnumUnitsInRange = GroupEnumUnitsInRange
    UnitGroupNatives.EnumUnitsInRangeCounted = GroupEnumUnitsInRangeCounted
    UnitGroupNatives.EnumUnitsInRangeLoc = GroupEnumUnitsInRangeOfLoc
    UnitGroupNatives.EnumUnitsInRangeLocCounted = GroupEnumUnitsInRangeOfLocCounted
    UnitGroupNatives.EnumUnitsOfPlayer = GroupEnumUnitsOfPlayer
    UnitGroupNatives.EnumUnitsSelected = GroupEnumUnitsSelected
    UnitGroupNatives.Order = GroupImmediateOrder
    UnitGroupNatives.OrderById = GroupImmediateOrderById
    UnitGroupNatives.PointOrder = GroupPointOrder
    UnitGroupNatives.PointOrderById = GroupPointOrderById
    UnitGroupNatives.LocationOrder = GroupPointOrderLoc
    UnitGroupNatives.LocationOrderById = GroupPointOrderByIdLoc
    UnitGroupNatives.TargetOrder = GroupTargetOrder
    UnitGroupNatives.TargetOrderById = GroupTargetOrderById
    return UnitGroupNatives
end)
if Debug then Debug.endFile() end
