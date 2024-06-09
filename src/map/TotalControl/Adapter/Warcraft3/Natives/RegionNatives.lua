if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/RegionNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/RegionNatives", function(require)
    ---@class RegionNatives
    local RegionNatives = {}
    RegionNatives.Create = CreateRegion
    RegionNatives.Destroy = RemoveRegion
    RegionNatives.AddRect = RegionAddRect
    RegionNatives.RemoveRect = RegionClearRect
    RegionNatives.AddCell = RegionAddCell
    RegionNatives.AddCellAtLocation = RegionAddCellAtLoc
    RegionNatives.RemoveCell = RegionClearCell
    RegionNatives.RemoveCellAtLocation = RegionClearCellAtLoc
    RegionNatives.ContainsUnit = IsUnitInRegion
    RegionNatives.ContainsPosition = IsPointInRegion
    RegionNatives.ContainsLocation = IsLocationInRegion
    return RegionNatives
end)
if Debug then Debug.endFile() end
