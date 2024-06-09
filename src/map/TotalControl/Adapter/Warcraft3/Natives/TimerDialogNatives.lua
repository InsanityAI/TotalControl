if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/TimerDialogNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/TimerDialogNatives", function(require)
    ---@class TimerDialogNatives
    local TimerDialogNatives = {}
    TimerDialogNatives.Create = CreateTimerDialog
    TimerDialogNatives.Destroy = DestroyTimerDialog
    TimerDialogNatives.SetTitle = TimerDialogSetTitle
    TimerDialogNatives.SetTitleColor = TimerDialogSetTitleColor
    TimerDialogNatives.SetTimeColor = TimerDialogSetTimeColor
    TimerDialogNatives.SetSpeed = TimerDialogSetSpeed
    TimerDialogNatives.Show = TimerDialogDisplay
    TimerDialogNatives.IsVisible = IsTimerDialogDisplayed
    TimerDialogNatives.SetTimeRemaining = TimerDialogSetRealTimeRemaining
    return TimerDialogNatives
end)
if Debug then Debug.endFile() end
