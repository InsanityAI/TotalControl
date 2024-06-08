if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/TimerNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/TimerNatives", function(require)
    ---@class TimerNatives
    local TimerNatives = {}
    TimerNatives.Create = CreateTimer
    TimerNatives.Destroy = DestroyTimer
    TimerNatives.Start = TimerStart
    TimerNatives.GetElapsed = TimerGetElapsed
    TimerNatives.GetRemaining = TimerGetRemaining
    TimerNatives.GetTimeout = TimerGetTimeout
    TimerNatives.PauseTimer = PauseTimer
    TimerNatives.ResumeTimer = ResumeTimer
    TimerNatives.GetExpiredTimer = GetExpiredTimer
    return TimerNatives
end)
if Debug then Debug.endFile() end
