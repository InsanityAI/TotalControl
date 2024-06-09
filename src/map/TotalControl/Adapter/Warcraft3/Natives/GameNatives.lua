if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/GameNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/GameNatives", function(require)
    ---@class GameNatives
    local GameNatives = {}
    GameNatives.GetVersion = VersionGet
    GameNatives.IsCompatibleWithVersion = VersionCompatible
    GameNatives.SupportsVersion = VersionSupported
    GameNatives.GetMaxAmountOfPlayers = GetBJMaxPlayers
    GameNatives.GetNeutralVictimPlayerId = GetBJPlayerNeutralVictim
    GameNatives.GetNeutralExtraPlayerId = GetBJPlayerNeutralExtra
    GameNatives.GetNeutralPassivePlayerId = GetPlayerNeutralPassive
    GameNatives.GetNeutralHostilePlayerId = GetPlayerNeutralAggressive
    GameNatives.GetMaxAmountOfPlayerSlots = GetBJMaxPlayerSlots
    GameNatives.End = EndGame
    GameNatives.Restart = RestartGame
    GameNatives.DisableRestart = DisableRestartMission
    GameNatives.Reload = ReloadGame
    GameNatives.Pause = PauseGame
    GameNatives.Save = SaveGame
    GameNatives.Load = LoadGame
    GameNatives.ShowLoadGameDialog = DisplayLoadDialog
    GameNatives.RenameSaveDirectory = RenameSaveDirectory
    GameNatives.RemoveSaveDirectory = RemoveSaveDirectory
    GameNatives.CopySaveGame = CopySaveGame
    GameNatives.GameSaveExists = SaveGameExists
    GameNatives.SetMaxCheckpointSaves = SetMaxCheckpointSaves
    GameNatives.SaveCheckpoint = SaveGameCheckpoint
    GameNatives.GetLocale = BlzGetLocale

    GameNatives.SetIntegerGameState = SetIntegerGameState
    GameNatives.SetIntegerGameState = GetIntegerGameState
    GameNatives.SetRealGameState = SetFloatGameState
    GameNatives.GetRealGameState = GetFloatGameState

    GameNatives.SetIntroShotText = SetIntroShotText
    GameNatives.SetIntroShotModel = SetIntroShotModel
    GameNatives.PlayModelCinematic = PlayModelCinematic
    GameNatives.PlayMovieCinematic = PlayCinematic
    GameNatives.HideCinematicPanels = BlzHideCinematicPanels

    GameNatives.Execute = ExecuteFunc
    GameNatives.GetHandleId = GetHandleId
    GameNatives.EnablePreSelection = EnablePreSelect
    GameNatives.EnableDragSelection = EnableDragSelect
    GameNatives.EnableNormalSelection = EnableSelect
    GameNatives.EnableSelection = BlzEnableSelections
    GameNatives.IsSelectionEnabled = BlzIsSelectionEnabled
    GameNatives.IsSelectionCircleEnabled = BlzIsSelectionCircleEnabled
    GameNatives.EnableTargetIndicator = BlzEnableTargetIndicator
    GameNatives.IsTargetIndicatorEnabled = BlzIsTargetIndicatorEnabled
    GameNatives.SyncSelections = SyncSelections
    GameNatives.SendSyncData = BlzSendSyncData
    GameNatives.EnableUserControl = EnableUserControl
    GameNatives.EnableUI = EnableUserUI
    GameNatives.DisplayUI = ShowInterface
    GameNatives.SetReservedHeroButtons = SetReservedLocalHeroButtons
    GameNatives.SuspendTimeOfDay = SuspendTimeOfDay
    GameNatives.SetTimeOfDaySpeed = SetTimeOfDayScale
    GameNatives.GetTimeOfDaySpeed = GetTimeOfDayScale
    GameNatives.SetDayNightModels = SetDayNightModels
    GameNatives.SetPortraitLight = SetPortraitLight
    GameNatives.SetSkyModel = SetSkyModel
    GameNatives.ShowSky = BlzShowSkyBox
    GameNatives.ShowMessageToPlayer = DisplayTextToPlayer
    GameNatives.ShowTimedMessageToPlayer = DisplayTimedTextToPlayer
    GameNatives.ShowTimedMessageFromPlayer = DisplayTimedTextFromPlayer
    GameNatives.ShowChatMessage = BlzDisplayChatMessage
    GameNatives.ClearMessages = ClearTextMessages
    GameNatives.GetSkinLocalPath = SkinManagerGetLocalPath
    GameNatives.ForceUIKeyPress = ForceUIKey
    GameNatives.ForceUICancel = ForceUICancel
    GameNatives.EnableCursor = BlzEnableCursor
    GameNatives.SetCursorPosition = BlzSetMousePos
    GameNatives.GetWindowWidth = BlzGetLocalClientWidth
    GameNatives.GetWindowHeight = BlzGetLocalClientHeight
    GameNatives.IsWindowActive = BlzIsLocalClientActive
    return GameNatives
end)
if Debug then Debug.endFile() end
