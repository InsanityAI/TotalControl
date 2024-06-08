if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft33DSoundInstance" end
OnInit.module("TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft33DSoundInstance", function(require)
    local Warcraft3SoundInstance = require "TotalControl/Adapter/Warcraft3/Assets/Sound/Warcraft3SoundInstance" ---@type Warcraft3SoundInstance
    local MathUtils = require "TotalControl/Util/MathUtils" ---@type MathUtils
    local SoundNatives = require "TotalControl/Adapter/Warcraft3/Natives/SoundNatives" ---@type SoundNatives

    ---@class Warcraft33DSoundInstance: Warcraft3SoundInstance, TC3DSoundInstance
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
    local Warcraft33DSoundInstance = setmetatable({}, Warcraft3SoundInstance)
    Warcraft33DSoundInstance.__index = Warcraft33DSoundInstance

    ---@param min number
    ---@param max number
    function Warcraft33DSoundInstance:setMinMaxDistances(min, max)
        SoundNatives.SetDistances(self.soundHandle, min, max)
        self.minDistance, self.maxDistance = min, max
    end

    function Warcraft33DSoundInstance:getMinMaxDistances()
        return self.minDistance or -1, self.maxDistance or -1
    end

    ---@param x vector
    ---@param y vector
    ---@param z vector
    function Warcraft33DSoundInstance:setVelocities(x, y, z)
        SoundNatives.SetVelocity(self.soundHandle, x, y, z)
        self.velocityX, self.velocityY, self.velocityZ = x, y, z
    end

    function Warcraft33DSoundInstance:getVelocities()
        return self.velocityX or 0, self.velocityY or 0, self.velocityZ or 0
    end

    ---@param x coordinate
    ---@param y coordinate
    ---@param z coordinate
    function Warcraft33DSoundInstance:setPosition(x, y, z)
        SoundNatives.SetPosition(self.soundHandle, x, y, z)
        self.x, self.y, self.z = x, y, z
    end

    function Warcraft33DSoundInstance:getPosition()
        return self.x, self.y, self.z
    end

    ---@param inside radians
    ---@param outside radians
    function Warcraft33DSoundInstance:setConeAngles(inside, outside)
        local volume = self.outsideConeVolume or self.volume
        if volume == nil then
            volume = 127
        else
            volume = MathUtils.PercentileTo128(volume)
        end
        SoundNatives.SetConeAngles(self.soundHandle, inside, outside, volume)
        self.insideConeAngle, self.outsideConeAngle = inside, outside
    end

    function Warcraft33DSoundInstance:getConeAngles()
        return self.insideConeAngle, self.outsideConeAngle
    end

    ---@param volume percentile
    function Warcraft33DSoundInstance:setOutsideVolume(volume)
        SoundNatives.SetConeAngles(self.soundHandle, self.insideConeAngle, self.outsideConeAngle,
            MathUtils.PercentileTo128(volume))
        self.outsideConeVolume = volume
    end

    function Warcraft33DSoundInstance:getOutsideVolume()
        return self.outsideConeVolume
    end

    ---@param x vector
    ---@param y vector
    ---@param z vector
    function Warcraft33DSoundInstance:setConeOrientation(x, y, z)
        SoundNatives.SetConeOrientation(self.soundHandle, x, y, z)
        self.coneOrientationX, self.coneOrientationY, self.coneOrientationZ = x, y, z
    end

    function Warcraft33DSoundInstance:getConeOrientation()
        return self.coneOrientationX, self.coneOrientationY, self.coneOrientationZ
    end

    return Warcraft33DSoundInstance
end)
if Debug then Debug.endFile() end
