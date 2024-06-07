if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/TimerNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/TimerNatives", function(require)
    ---@class TimerNatives
    local TimerNatives = {}
    TimerNatives.create = CreateTimer
    TimerNatives.destroy = DestroyTimer
    TimerNatives.start = TimerStart
    TimerNatives.getElapsed = TimerGetElapsed
    TimerNatives.getRemaining = TimerGetRemaining
    TimerNatives.getTimeout = TimerGetTimeout
    TimerNatives.pauseTimer = PauseTimer
    TimerNatives.resumeTimer = ResumeTimer
    TimerNatives.getExpiredTimer = GetExpiredTimer
    return TimerNatives
end)
if Debug then Debug.endFile() end
