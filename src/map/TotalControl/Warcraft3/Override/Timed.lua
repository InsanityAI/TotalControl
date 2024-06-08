if Debug then Debug.beginFile "TotalControl/Warcraft3/Override/Timed" end
OnInit.module("TotalControl/Warcraft3/Override/Timed", function(require)
    -- ============================================================================
    --  Timer API

    ---@alias timer TCTimer

    local timerContexts = setmetatable({}, {__mode = 'kv'}) ---@type table<thread, TCTimer>

    CreateTimer = TCTimer.create
    DestroyTimer = TCTimer.destroy

    ---@param whichTimer TCTimer
    ---@param timeout number
    ---@param periodic boolean
    ---@param handlerFunc? function
    function TimerStart(whichTimer, timeout, periodic, handlerFunc)
        if handlerFunc then
            whichTimer:setCallback(function()
                timerContexts[coroutine.running()] = whichTimer
                handlerFunc()
            end)
        end

        whichTimer:setTimeout(timeout)
        if periodic then
            whichTimer:startPeriodic()
        else
            whichTimer:startOneshot()
        end
    end

    TimerGetElapsed = TCTimer.getElapsed
    TimerGetRemaining = TCTimer.getRemaining
    TimerGetTimeout = TCTimer.getTimeout
    PauseTimer = TCTimer.pause
    ResumeTimer = TCTimer.resume

    ---@return TCTimer?
    function GetExpiredTimer()
        return timerContexts[coroutine.running()]
    end

    TriggerSleepAction = TCSleep
end)
if Debug then Debug.endFile() end
