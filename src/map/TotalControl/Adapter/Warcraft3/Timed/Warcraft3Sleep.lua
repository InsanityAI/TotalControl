if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Timed/Warcraft3Sleep" end
OnInit.module("TotalControl/Adapter/Warcraft3/Timed/Warcraft3Sleep", function(require)
    local TimerQueue = require "TimerQueue" ---@type TimerQueue

    -- Simplified version of https://www.hiveworkshop.com/threads/precise-wait-gui-friendly.316960/#post-3378042

    ---@param thread thread
    local function resumeCoroutine(thread)
        coroutine.resume(thread)
    end

    ---@type TCSleep
    local function Warcraft3Sleep(seconds)
        local thread = coroutine.running()
        TimerQueue:callDelayed(seconds, resumeCoroutine, thread)
        coroutine.yield(thread)
    end

    return Warcraft3Sleep
end)
if Debug then Debug.endFile() end
