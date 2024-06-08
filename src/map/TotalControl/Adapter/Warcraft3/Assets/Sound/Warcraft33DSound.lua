if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft33DSound" end
OnInit.module("TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft33DSound", function(require)
    local Warcraft3Sound = require "TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft3Sound" ---@type Warcraft3Sound
    local Warcraft33DSoundInstance = require "TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft33DSoundInstance" ---@type Warcraft33DSoundInstance
    local MathUtils = require "TotalControl/Util/MathUtils" ---@type MathUtils
    local SoundNatives = require "TotalControl/Adapter/Warcraft3/Natives/SoundNatives" ---@type SoundNatives

    ---@class Warcraft33DSound: Warcraft3Sound, TC3DSound
    ---@field protected minDistance number?
    ---@field protected maxDistance number?
    ---@field protected velocityX number?
    ---@field protected velocityY number?
    ---@field protected velocityZ number?
    ---@field protected x number
    ---@field protected y number
    ---@field protected z number
    ---@field protected insideConeAngle radians?
    ---@field protected outsideConeAngle radians?
    ---@field protected outsideConeVolume percentile?
    ---@field protected coneOrientationX vector?
    ---@field protected coneOrientationY vector?
    ---@field protected coneOrientationZ vector?
    local Warcraft33DSound = setmetatable({}, Warcraft3Sound)
    Warcraft33DSound.__index = Warcraft33DSound

    ---@param filePath soundPath
    ---@param looping boolean
    ---@param fadeInRate integer
    ---@param fadeOutRate integer
    ---@param environment TC_SOUND_SETTING
    function Warcraft33DSound.create(filePath, looping, fadeInRate, fadeOutRate, environment)
        return setmetatable(Warcraft3Sound.create(filePath, looping, fadeInRate, fadeOutRate, environment),
            Warcraft33DSound)
    end

    ---@param x coordinate
    ---@param y coordinate
    ---@param z coordinate
    ---@param seekmillis integer
    function Warcraft33DSound:play(x, y, z, seekmillis)
        local soundHandle = SoundNatives.Create(self.filePath, self.looping, true, false, self.fadeInRate, self.fadeOutRate,
            self.environment) --[[@as sound]]
        if self.pitch ~= nil then
            SoundNatives.SetPitch(soundHandle, self.pitch)
        end
        if self.volume ~= nil then
            SoundNatives.SetVolume(soundHandle, MathUtils.PercentileTo128(self.volume))
        end
        if self.channel ~= nil then
            SoundNatives.SetChannel(soundHandle, self.channel)
        end
        if self.duration ~= nil then
            SoundNatives.SetDuration(soundHandle, self.duration)
        end
        if self.distanceCutoff ~= nil then
            SoundNatives.SetDistanceCutoff(soundHandle, self.distanceCutoff)
        end
        if self.minDistance ~= nil and self.maxDistance ~= nil then
            SoundNatives.SetDistances(soundHandle, self.minDistance, self.maxDistance)
        end
        if self.velocityX ~= nil and self.velocityY ~= nil and self.velocityZ ~= nil then
            SoundNatives.SetVelocity(soundHandle, self.velocityX, self.velocityY, self.velocityZ)
        end
        if self.insideConeAngle ~= nil and self.outsideConeAngle ~= nil and self.outsideConeVolume then
            SoundNatives.SetConeAngles(soundHandle, self.insideConeAngle, self.outsideConeAngle, self.outsideConeVolume)
        end
        if self.coneOrientationX ~= nil and self.coneOrientationY ~= nil and self.coneOrientationZ ~= nil then
            SoundNatives.SetConeOrientation(soundHandle, self.coneOrientationX, self.coneOrientationY, self.coneOrientationZ)
        end

        local o = setmetatable({
            looping = self.looping,
            fadeInRate = self.fadeInRate,
            fadeOutRate = self.fadeOutRate,
            environment = self.environment,
            pitch = self.pitch or 1,
            mustCorrectPitch = false,
            volume = self.volume or 100,
            channel = self.channel or 0,
            duration = self.duration,
            distanceCutoff = self.distanceCutoff,
            soundHandle = soundHandle,
            x = x,
            y = y,
            z = z,
            minDistance = self.minDistance,
            maxDistance = self.maxDistance,
            velocityX = self.velocityX,
            velocityY = self.velocityY,
            velocityZ = self.velocityZ,
            insideConeAngle = self.insideConeAngle,
            outsideConeAngle = self.outsideConeAngle,
            outsideConeVolume = self.outsideConeVolume,
            coneOrientationX = self.coneOrientationX,
            coneOrientationY = self.coneOrientationY,
            coneOrientationZ = self.coneOrientationZ
        }, Warcraft33DSoundInstance)

        SoundNatives.SetPosition(soundHandle, x, y, z)

        if self.fadeInRate then
            SoundNatives.StartEx(soundHandle, true)
        else
            SoundNatives.Start(soundHandle)
        end

        if seekmillis then
            SoundNatives.SetPlayPosition(soundHandle, seekmillis)
        end

        return o
    end

    ---@param min number
    ---@param max number
    function Warcraft33DSound:setMinMaxDistances(min, max)
        self.minDistance, self.maxDistance = min, max
    end

    function Warcraft33DSound:getMinMaxDistances()
        return self.minDistance, self.maxDistance
    end

    ---@param x vector
    ---@param y vector
    ---@param z vector
    function Warcraft33DSound:setVelocities(x, y, z)
        self.velocityX, self.velocityY, self.velocityZ = x, y, z
    end

    function Warcraft33DSound:getVelocities()
        return self.velocityX, self.velocityY, self.velocityZ
    end

    ---@param x coordinate
    ---@param y coordinate
    ---@param z coordinate
    function Warcraft33DSound:setPosition(x, y, z)
        self.x, self.y, self.z = x, y, z
    end

    function Warcraft33DSound:getPosition()
        return self.x, self.y, self.z
    end

    ---@param inside radians
    ---@param outside radians
    function Warcraft33DSound:setConeAngles(inside, outside)
        self.insideConeAngle, self.outsideConeAngle = inside, outside
    end

    function Warcraft33DSound:getConeAngles()
        return self.insideConeAngle, self.outsideConeAngle
    end

    ---@param volume percentile
    function Warcraft33DSound:setOutsideVolume(volume)
        self.outsideConeVolume = volume
    end

    function Warcraft33DSound:getOutsideVolume()
        return self.outsideConeVolume
    end

    ---@param x vector
    ---@param y vector
    ---@param z vector
    function Warcraft33DSound:setConeOrientation(x, y, z)
        self.coneOrientationX, self.coneOrientationY, self.coneOrientationZ = x, y, z
    end

    function Warcraft33DSound:getConeOrientation()
        return self.coneOrientationX, self.coneOrientationY, self.coneOrientationZ
    end

    return Warcraft33DSound
end)
if Debug then Debug.endFile() end
