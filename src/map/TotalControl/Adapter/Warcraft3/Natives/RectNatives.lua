if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/RectNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/RectNatives", function(require)
    ---@class RectNatives
    local RectNatives = {}
    RectNatives.GetWorldRect = GetWorldBounds
    RectNatives.Create = Rect
    RectNatives.CreateFromLocations = RectFromLoc
    RectNatives.Destroy = RemoveRect
    RectNatives.SetCoordinates = SetRect
    RectNatives.SetCornersFromLocations = SetRectFromLoc
    RectNatives.SetPosition = MoveRectTo
    RectNatives.SetLocation = MoveRectToLoc
    RectNatives.GetCenterX = GetRectCenterX
    RectNatives.GetCenterY = GetRectCenterY
    RectNatives.GetCenterLocation = GetRectCenter
    RectNatives.GetMinX = GetRectMinX
    RectNatives.GetMaxX = GetRectMaxX
    RectNatives.GetMinY = GetRectMinY
    RectNatives.GetMaxY = GetRectMaxY

    RectNatives.ForEachDestructable = EnumDestructablesInRect
    RectNatives.ForEachItem = EnumItemsInRect
    return RectNatives
end)
if Debug then Debug.endFile() end
