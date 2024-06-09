if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/MinimapNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/MinimapNatives", function(require)
    ---@class MinimapNatives
    local MinimapNatives = {}
    MinimapNatives.AddUnitIndicator = UnitAddIndicator
    MinimapNatives.AddIndicator = AddIndicator
    MinimapNatives.Ping = PingMinimap
    MinimapNatives.PingEx = PingMinimapEx
    MinimapNatives.CreateIconOnUnit = CreateMinimapIconOnUnit
    MinimapNatives.CreateIconAtLocation = CreateMinimapIconAtLoc
    MinimapNatives.CreateIconAtPosition = CreateMinimapIcon
    MinimapNatives.DestroyIcon = DestroyMinimapIcon
    MinimapNatives.ShowIcon = SetMinimapIconVisible
    MinimapNatives.SetDestroyOrphanIcon = SetMinimapIconOrphanDestroy
    MinimapNatives.SetAltIcon = SetAltMinimapIcon
    MinimapNatives.SetAllyColorFilterState = SetAllyColorFilterState
    MinimapNatives.GetAllyColorFilterState = GetAllyColorFilterState
    MinimapNatives.SetCreepCampFilterState = SetCreepCampFilterState
    MinimapNatives.GetCreepCampFilterState = GetCreepCampFilterState
    MinimapNatives.EnableFilterButtons = EnableMinimapFilterButtons
    MinimapNatives.SetTerrainTexture = BlzChangeMinimapTerrainTex
    return MinimapNatives
end)
if Debug then Debug.endFile() end
