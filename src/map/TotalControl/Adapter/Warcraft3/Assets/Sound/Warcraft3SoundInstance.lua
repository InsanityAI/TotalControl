if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft3SoundInstance" end
OnInit.module("TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft3SoundInstance", function(require)
    local MathUtils = require "TotalControl/Util/MathUtils" ---@type MathUtils
    local SoundNatives = require "TotalControl/Adapter/Warcraft3/Natives/SoundNatives" ---@type SoundNatives

    ---@class Warcraft3SoundInstance: TCSoundInstance
    ---@field protected soundHandle sound
    ---@field protected looping boolean
    ---@field protected fadeInRate number
    ---@field protected fadeOutRate number
    ---@field protected environment TC_SOUND_SETTING
    ---@field protected pitch number
    ---@field protected volume percentile
    ---@field protected channel integer
    ---@field protected duration integer?
    ---@field protected distanceCutoff number?
    local Warcraft3SoundInstance = {}
    Warcraft3SoundInstance.__index = Warcraft3SoundInstance

    ---@param ms integer
    function Warcraft3SoundInstance:seek(ms)
        if not self:isPlaying() then
            if self.fadeInRate ~= nil then
                SoundNatives.startEx(self.soundHandle, true)
            else
                SoundNatives.start(self.soundHandle)
            end
        end
        SoundNatives.setPlayPosition(self.soundHandle, ms)
    end

    ---@param instant boolean?
    function Warcraft3SoundInstance:stop(instant)
        SoundNatives.stop(self.soundHandle, false, not instant and self.fadeOutRate ~= 0)
    end

    function Warcraft3SoundInstance:destroy()
        if not self:isPlaying() then
            SoundNatives.start(self.soundHandle)
            SoundNatives.stop(self.soundHandle, true, false)
        else
            SoundNatives.killWhenDone(self.soundHandle)
        end
    end

    function Warcraft3SoundInstance:isLooping()
        return self.looping
    end

    function Warcraft3SoundInstance:isPlaying()
        return SoundNatives.isPlaying(self.soundHandle)
    end

    function Warcraft3SoundInstance:getFadeInRate()
        return self.fadeInRate
    end

    function Warcraft3SoundInstance:getFadeOutRate()
        return self.fadeOutRate
    end

    function Warcraft3SoundInstance:getEnvironment()
        return self.environment
    end

    ---@param pitch number
    function Warcraft3SoundInstance:setPitch(pitch)
        if pitch == self.pitch then return end
        ---@see https://www.hiveworkshop.com/threads/setsoundpitch-weirdness.215743/#post-2145419
        if self.pitch ~= 1 then
            SoundNatives.setPitch(self.soundHandle, 1/self.pitch)
        end
        if pitch == 1 then
            SoundNatives.setPitch(self.soundHandle, 1.0001)
        else 
            SoundNatives.setPitch(self.soundHandle, pitch)
        end

        self.pitch = pitch
    end

    function Warcraft3SoundInstance:getPitch()
        return self.pitch
    end

    ---@param volume percentile
    function Warcraft3SoundInstance:setVolume(volume)
        SoundNatives.setVolume(self.soundHandle, MathUtils.PercentileTo128(volume))
        self.volume = volume
    end

    function Warcraft3SoundInstance:getVolume()
        return self.volume
    end

    ---@param channel integer
    function Warcraft3SoundInstance:setChannel(channel)
        SoundNatives.setChannel(self.soundHandle, channel)
        self.channel = channel
    end

    function Warcraft3SoundInstance:getChannel()
        return self.channel
    end

    ---@param duration integer
    function Warcraft3SoundInstance:setDuration(duration)
        SoundNatives.setDuration(self.soundHandle, duration)
        self.duration = duration
    end

    function Warcraft3SoundInstance:getDuration()
        if self.duration ~= nil then
            self.duration = SoundNatives.getDuration(self.soundHandle)
        end
        return self.duration
    end

    ---@param distance number
    function Warcraft3SoundInstance:setDistanceCutoff(distance)
        SoundNatives.setDistanceCutoff(self.soundHandle, distance)
        self.distanceCutoff = distance
    end

    function Warcraft3SoundInstance:getDistanceCutoff()
        return self.distanceCutoff or -1
    end

    return Warcraft3SoundInstance
end)
if Debug then Debug.endFile() end
