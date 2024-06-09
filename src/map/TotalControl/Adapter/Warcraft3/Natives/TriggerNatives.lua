if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/TriggerNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/TriggerNatives", function (require)
    ---@class TriggerNatives
    local TriggerNatives = {}
    TriggerNatives.Create = CreateTrigger
    TriggerNatives.Destroy = DestroyTrigger
    TriggerNatives.Reset = ResetTrigger
    TriggerNatives.Enable = EnableTrigger
    TriggerNatives.Disable = DisableTrigger
    TriggerNatives.IsEnabled = IsTriggerEnabled
    TriggerNatives.SetWaitOnSleep = TriggerWaitOnSleeps
    TriggerNatives.IsWaitOnSleep = IsTriggerWaitOnSleeps
    TriggerNatives.Wait = TriggerSleepAction
    TriggerNatives.WaitForSound = TriggerWaitForSound
    TriggerNatives.GetEvaluationCount = GetTriggerEvalCount
    TriggerNatives.GetExecutionCount = GetTriggerExecCount
    TriggerNatives.Evaluate = TriggerEvaluate
    TriggerNatives.Execute = TriggerExecute
    TriggerNatives.SyncStart = TriggerSyncStart
    TriggerNatives.SyncReady = TriggerSyncReady

    TriggerNatives.RegisterVariableEvent = TriggerRegisterVariableEvent
    TriggerNatives.RegisterTimedEvent = TriggerRegisterTimerEvent
    TriggerNatives.RegisterTimerExpiresEvent = TriggerRegisterTimerExpireEvent
    TriggerNatives.RegisterGameStateEvent = TriggerRegisterGameStateEvent
    TriggerNatives.RegisterDialogClickEvent = TriggerRegisterDialogEvent
    TriggerNatives.RegisterDialogButtonClickEvent = TriggerRegisterDialogButtonEvent
    TriggerNatives.RegisterGameEvent = TriggerRegisterGameEvent
    TriggerNatives.RegisterRegionEntryEvent = TriggerRegisterEnterRegion
    TriggerNatives.RegisterRegionLeaveEvent = TriggerRegisterLeaveRegion
    TriggerNatives.RegisterTrackableHitEvent = TriggerRegisterTrackableHitEvent
    TriggerNatives.RegisterTrackableTrackEvent = TriggerRegisterTrackableTrackEvent
    TriggerNatives.RegisterCommandEvent = TriggerRegisterCommandEvent
    TriggerNatives.RegisterUpgradeCommandEvent = TriggerRegisterUpgradeCommandEvent
    TriggerNatives.RegisterPlayerEvent = TriggerRegisterPlayerEvent
    TriggerNatives.RegisterPlayerUnitEvent = TriggerRegisterPlayerUnitEvent
    TriggerNatives.RegisterPlayerAllianceChangeEvent = TriggerRegisterPlayerAllianceChange
    TriggerNatives.RegisterPlayerStateEvent = TriggerRegisterPlayerStateEvent
    TriggerNatives.RegisterPlayerChatEvent = TriggerRegisterPlayerChatEvent
    TriggerNatives.RegisterWidgetDeathEvent = TriggerRegisterDeathEvent
    TriggerNatives.RegisterUnitStateEvent = TriggerRegisterUnitStateEvent
    TriggerNatives.RegisterUnitEvent = TriggerRegisterUnitEvent
    TriggerNatives.RegisterFilteredUnitEvent = TriggerRegisterFilterUnitEvent
    TriggerNatives.RegisterUnitInRangeEvent = TriggerRegisterUnitInRange
    TriggerNatives.RegisterPlayerKeyboardEvent = BlzTriggerRegisterPlayerKeyEvent
    TriggerNatives.RegisterFrameEvent = BlzTriggerRegisterFrameEvent
    TriggerNatives.RegisterSyncEvent = BlzTriggerRegisterPlayerSyncEvent

    TriggerNatives.AddCondition = TriggerAddCondition
    TriggerNatives.RemoveCondition = TriggerRemoveCondition
    TriggerNatives.ClearConditions = TriggerClearConditions

    TriggerNatives.AddAction = TriggerAddAction
    TriggerNatives.RemoveAction = TriggerRemoveAction
    TriggerNatives.ClearActions = TriggerClearActions

    return TriggerNatives
end)
if Debug then Debug.endFile() end

