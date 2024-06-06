if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft3Sound" end
OnInit.module("TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft3Sound", function(require)
    local Warcraft3SoundInstance = require "TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft3SoundInstance" ---@type Warcraft3SoundInstance
    local MathUtils = require "TotalControl/Util/MathUtils" ---@type MathUtils
    local SoundNatives = require "TotalControl/Adapter/Warcraft3/Natives/SoundNatives" ---@type SoundNatives

    ---@class Warcraft3Sound: TCSound, Warcraft3Asset
    ---@field protected looping boolean
    ---@field protected fadeInRate integer
    ---@field protected fadeOutRate integer
    ---@field protected environment TC_SOUND_SETTING
    ---@field protected pitch number?
    ---@field protected volume percentile?
    ---@field protected channel integer?
    ---@field protected duration integer?
    ---@field protected distanceCutoff integer?
    local Warcraft3Sound = setmetatable({}, Warcraft3Asset)
    Warcraft3Sound.__index = Warcraft3Sound

    ---@param filePath soundPath
    ---@param looping boolean
    ---@param fadeInRate integer
    ---@param fadeOutRate integer
    ---@param environment TC_SOUND_SETTING
    function Warcraft3Sound.create(filePath, looping, fadeInRate, fadeOutRate, environment)
        local o = setmetatable(Warcraft3Asset.create(filePath), Warcraft3Sound)
        o.looping = looping
        o.fadeInRate = fadeInRate
        o.fadeOutRate = fadeOutRate
        o.environment = environment
        return o
    end

    ---@param seekmillis integer?
    ---@return Warcraft3SoundInstance
    function Warcraft3Sound:play(seekmillis)
        local soundHandle = SoundNatives.create(self.filePath, self.looping, false, false, self.fadeInRate, self.fadeOutRate, self.environment) --[[@as sound]]
        if self.pitch ~= nil then
            SoundNatives.setPitch(soundHandle, self.pitch)
        end
        if self.volume ~= nil then
            SoundNatives.setVolume(soundHandle, MathUtils.PercentileTo128(self.volume))
        end
        if self.channel ~= nil then
            SoundNatives.setChannel(soundHandle, self.channel)
        end
        if self.duration ~= nil then
            SoundNatives.setDuration(soundHandle, self.duration)
        end
        if self.distanceCutoff ~= nil then
            SoundNatives.setDistanceCutoff(soundHandle, self.distanceCutoff)
        end
        local o = setmetatable({
            looping = self.looping,
            fadeInRate = self.fadeInRate,
            fadeOutRate = self.fadeOutRate,
            environment = self.environment,
            pitch = self.pitch or 1,
            volume = self.volume or 100,
            channel = self.channel or 0,
            duration = self.duration,
            distanceCutoff = self.distanceCutoff,
            soundHandle = soundHandle
        }, Warcraft3SoundInstance)

        if self.fadeInRate then
            SoundNatives.startEx(soundHandle, true)
        else
            SoundNatives.start(soundHandle)
        end

        if seekmillis then
            SoundNatives.setPlayPosition(soundHandle, seekmillis)
        end

        return o
    end

    function Warcraft3Sound:isLooping()
        return self.looping
    end

    ---@param looping boolean
    function Warcraft3Sound:setLooping(looping)
        self.looping = looping
    end

    ---@param fadeInRate integer
    function Warcraft3Sound:setFadeInRate(fadeInRate)
        self.fadeInRate = fadeInRate
    end

    function Warcraft3Sound:getFadeInRate()
        return self.fadeInRate
    end

    ---@param fadeOutRate integer
    function Warcraft3Sound:setFadeOutRate(fadeOutRate)
        self.fadeOutRate = fadeOutRate
    end

    function Warcraft3Sound:getFadeOutRate()
        return self.fadeOutRate
    end

    ---@param environment TC_SOUND_SETTING
    function Warcraft3Sound:setEnvironment(environment)
        self.environment = environment
    end

    function Warcraft3Sound:getEnvironment()
        return self.environment
    end

    ---@param pitch number
    function Warcraft3Sound:setPitch(pitch)
        self.pitch = pitch
    end

    function Warcraft3Sound:getPitch()
        return self.pitch or 1
    end

    ---@param volume percentile
    function Warcraft3Sound:setVolume(volume)
        self.volume = volume
    end

    function Warcraft3Sound:getVolume()
        return self.volume or 100
    end

    ---@param channel integer
    function Warcraft3Sound:setChannel(channel)
        self.channel = channel
    end

    function Warcraft3Sound:getChannel()
        return self.channel or 0
    end

    ---@param duration integer
    function Warcraft3Sound:setDuration(duration)
        self.duration = duration
    end

    function Warcraft3Sound:getDistanceCutoff()
        return self.distanceCutoff or -1
    end

    function Warcraft3Sound:setDistanceCutoff(distance)
        self.distanceCutoff = distance
    end

    return Warcraft3Sound
end)
if Debug then Debug.endFile() end