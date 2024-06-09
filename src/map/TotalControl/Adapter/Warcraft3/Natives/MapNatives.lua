if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/MapNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/MapNatives", function(require)
    ---@class MapNatives
    local MapNatives = {}
    MapNatives.SetName = SetMapName
    MapNatives.SetDescription = SetMapDescription
    MapNatives.SetStartPoint = DefineStartLocation
    MapNatives.SetStartLocation =  DefineStartLocationLoc
    MapNatives.GetStartPointX = GetStartLocationX
    MapNatives.GetStartPointY = GetStartLocationY
    MapNatives.GetStartLocation = GetStartLocationLoc
    MapNatives.SetStartPointPriorityCount = SetStartLocPrioCount
    MapNatives.SetStartPointPriority = SetStartLocPrio
    MapNatives.GetStartPointPriority = GetStartLocPrio
    MapNatives.GetStartPointPrioritySlot = GetStartLocPrioSlot
    MapNatives.SetEnemyStartPointPriorityCount = SetEnemyStartLocPrioCount
    MapNatives.SetEnemyStartPointPriority = SetEnemyStartLocPrio
    MapNatives.SetTeams = SetTeams
    MapNatives.GetTeams = GetTeams
    MapNatives.SetGameTypeSupported = SetGameTypeSupported
    MapNatives.IsGameTypeSupported = IsGameTypeSupported
    MapNatives.GetGameTypeSelected = GetGameTypeSelected
    MapNatives.SetFlag = SetMapFlag
    MapNatives.IsFlagSet = IsMapFlagSet
    MapNatives.SetGamePlacement = SetGamePlacement
    MapNatives.GetGamePlacement = GetGamePlacement
    MapNatives.SetGameSpeed = SetGameSpeed
    MapNatives.GetGameSpeed = GetGameSpeed
    MapNatives.SetGameDifficulty = SetGameDifficulty
    MapNatives.GetGameDifficulty = GetGameDifficulty
    MapNatives.SetResourceDensity = SetResourceDensity
    MapNatives.GetResourceDensity = GetResourceDensity
    MapNatives.SetCreatureDensity = SetCreatureDensity
    MapNatives.GetCreatureDensity = GetCreatureDensity
    return MapNatives
end)
if Debug then Debug.endFile() end
