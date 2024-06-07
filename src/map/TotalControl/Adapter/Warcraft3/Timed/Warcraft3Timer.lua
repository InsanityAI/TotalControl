if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Timed/Warcraft3Timer" end
OnInit.module("TotalControl/Adapter/Warcraft3/Timed/Warcraft3Timer", function(require)
    require "TimerQueue" -- lets rely on super awesome TimerQueue instead of natives directly!

    local timerWatch = Stopwatch.create(true) ---@type Stopwatch

    ---@class Warcraft3Timer: TCTimer
    ---@field package timeout number
    ---@field package task TimerQueueTask?
    ---@field package callback function?
    ---@field package paused boolean
    ---@field package elapsed number
    ---@field package startingTime number
    ---@field package periodic boolean
    local Warcraft3Timer = {}
    Warcraft3Timer.__index = Warcraft3Timer

    ---@return TCTimer
    function Warcraft3Timer.create()
        return setmetatable({
            paused = true,
            elapsed = 0,
            periodic = false,
            startingTime = 0,
            timeout = 0.02
        }, Warcraft3Timer)
    end

    function Warcraft3Timer:destroy()
        self:stop()
    end

    function Warcraft3Timer:stop()
        if self.task then
            TimerQueue:cancel(self.task)
            self.paused = true
            self.task = nil
        end
    end

    ---@param timer Warcraft3Timer
    ---@param ... unknown
    local function timerPeriodicCallbackFunc(timer, ...)
        if timer.callback then timer.callback(...) end
        timer.startingTime = timerWatch:getElapsed()
        timer.elapsed = 0
    end

    ---@param ... unknown
    function Warcraft3Timer:startPeriodic(...)
        self:stop()
        self.startingTime = timerWatch:getElapsed()
        self.elapsed = 0
        self.paused = false
        self.task = TimerQueue:callPeriodically(self.timeout, nil, timerPeriodicCallbackFunc, self, ...)
    end

    ---@param timer Warcraft3Timer
    ---@param ... unknown
    local function timerCallbackFunc(timer, ...)
        if timer.callback then timer.callback(...) end
        timer.task = nil
        timer.paused = true
    end

    ---@param ... unknown
    function Warcraft3Timer:startOneshot(...)
        self:stop()
        self.startingTime = timerWatch.elapsed
        self.elapsed = 0
        self.paused = false
        self.task = TimerQueue:callDelayed(self.timeout, timerCallbackFunc, self, ...)
    end

    ---@param timer Warcraft3Timer
    ---@param ... unknown
    local function resumeToUsualPeriodic(timer, ...)
        if timer.callback then timer.callback(...) end
        timer.startingTime = timerWatch:getElapsed()
        timer.elapsed = 0
        timer.task = TimerQueue:callPeriodically(timer.timeout, nil, timerPeriodicCallbackFunc, timer, table.unpack(timer.task, 1, timer.task.n))
    end

    function Warcraft3Timer:resume()
        if self.task and self.paused then
            self.startingTime = timerWatch.elapsed
            if self.periodic then
                self.task = TimerQueue:callDelayed(self.timeout - self.elapsed, resumeToUsualPeriodic, self, table.unpack(self.task, 1, self.task.n))
            else
                self.task = TimerQueue:callDelayed(self.timeout - self.elapsed, timerCallbackFunc, self, table.unpack(self.task, 1, self.task.n))
            end
            self.paused = false
        end
    end

    function Warcraft3Timer:pause()
        if self.task then
            local current = timerWatch:getElapsed()
            self.elapsed = self.elapsed + self.startingTime - current
            self.startingTime = current
            TimerQueue:cancel(self.task)
            self.paused = true
        end
    end

    function Warcraft3Timer:getElapsed()
        if self.paused then
            return self.elapsed
        else
            return self.elapsed + (self.startingTime - timerWatch:getElapsed())
        end
    end

    function Warcraft3Timer:getRemaining()
        return self.timeout - self:getElapsed()
    end

    function Warcraft3Timer:getTimeout()
        return self.timeout
    end

    ---@param timeout number
    function Warcraft3Timer:setTimeout(timeout)
        self.timeout = timeout
        if self.task then
            self:pause()
            self:resume()
        end
    end

    ---@param callback function?
    function Warcraft3Timer:setCallback(callback)
        self.callback = callback
    end

    function Warcraft3Timer:getCallback()
        return self.callback
    end

    return Warcraft3Timer
end)
if Debug then Debug.endFile() end
