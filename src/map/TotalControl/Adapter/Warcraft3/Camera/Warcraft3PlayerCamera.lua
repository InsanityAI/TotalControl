if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Camera/Warcraft3PlayerCamera" end
OnInit.module("TotalControl/Adapter/Warcraft3/Camera/Warcraft3PlayerCamera", function(require)
    local CameraNatives = require "TotalControl/Adapter/Warcraft3/Natives/CameraNatives" ---@type CameraNatives

    ---@class Warcraft3PlayerCamera: TCPlayerCamera
    ---@field package player TCPlayer
    ---@field package camera number
    ---@field package cameraNoiseMagnitude number
    ---@field package cameraNoiseVelocity number
    ---@field package targetNoiseMagnitude number
    ---@field package targetNoiseVelocity number
    ---@field package focalDistance number
    ---@field package depthOfField number
    local Warcraft3PlayerCamera = {}
    Warcraft3PlayerCamera.__index = Warcraft3PlayerCamera

    function Warcraft3PlayerCamera:stop()
        if self.player:isLocalPlayer() then
            CameraNatives.Stop()
        end
    end

    ---@param x coordinate?
    ---@param y coordinate?
    ---@param z coordinate?
    ---@param seconds number?
    function Warcraft3PlayerCamera:setPosition(x, y, z, seconds)
        if not self.player:isLocalPlayer() then return end
        if not x and not y then return end

        x = x or CameraNatives.GetTargetPositionX()
        y = y or CameraNatives.GetTargetPositionY()

        if seconds then
            if z then
                CameraNatives.PanToTimedWithZ(x, y, z, seconds)
            else
                CameraNatives.PanToTimed(x, y, seconds)
            end
        else
            if z then
                CameraNatives.PanToWithZ(x, y, z)
            else
                CameraNatives.SetPosition(x, y)
            end
        end
    end

    function Warcraft3PlayerCamera:getPosition()
        if self.player:isLocalPlayer() then
            return CameraNatives.GetTargetPositionX(),
                CameraNatives.GetTargetPositionY(),
                CameraNatives.GetTargetPositionZ()
        else
            -- todo: fetch remote player coords
        end
    end

    ---@param yaw radians?
    ---@param pitch radians?
    ---@param roll radians?
    ---@param seconds number?
    function Warcraft3PlayerCamera:setRotation(yaw, pitch, roll, seconds)
        if not self.player:isLocalPlayer() then return end
        if yaw ~= nil then CameraNatives.SetField(CameraNatives.FIELDS.LOCAL_YAW, yaw, seconds or 0) end
        if pitch ~= nil then CameraNatives.SetField(CameraNatives.FIELDS.LOCAL_PITCH, pitch, seconds or 0) end
        if roll ~= nil then CameraNatives.SetField(CameraNatives.FIELDS.LOCAL_ROLL, roll, seconds or 0) end
    end

    function Warcraft3PlayerCamera:getRotation()
        if self.player:isLocalPlayer() then
            return CameraNatives.GetField(CameraNatives.FIELDS.LOCAL_YAW),
                CameraNatives.GetField(CameraNatives.FIELDS.LOCAL_PITCH),
                CameraNatives.GetField(CameraNatives.FIELDS.LOCAL_ROLL)
        else
            -- todo: fetch remote player coords
        end
    end

    ---@param rotation radians?
    ---@param angleOfAttack radians?
    ---@param roll radians?
    ---@param seconds number?
    function Warcraft3PlayerCamera:setTargetRotation(rotation, angleOfAttack, roll, seconds)
        if not self.player:isLocalPlayer() then return end
        if rotation ~= nil then CameraNatives.SetField(CameraNatives.FIELDS.ROTATION, rotation, seconds or 0) end
        if angleOfAttack ~= nil then
            CameraNatives.SetField(CameraNatives.FIELDS.ANGLE_OF_ATTACK, angleOfAttack,
                seconds or 0)
        end
        if roll ~= nil then CameraNatives.SetField(CameraNatives.FIELDS.ROLL, roll, seconds or 0) end
    end

    function Warcraft3PlayerCamera:getTargetRotation()
        if self.player:isLocalPlayer() then
            return CameraNatives.GetField(CameraNatives.FIELDS.ROTATION),
                CameraNatives.GetField(CameraNatives.FIELDS.ANGLE_OF_ATTACK),
                CameraNatives.GetField(CameraNatives.FIELDS.ROLL)
        else
            -- todo: fetch remote player coords
        end
    end

    ---@param fovAngle scale
    ---@param seconds number?
    function Warcraft3PlayerCamera:setFieldOfView(fovAngle, seconds)
        if not self.player:isLocalPlayer() then return end
        CameraNatives.SetField(CameraNatives.FIELDS.FIELD_OF_VIEW, fovAngle, seconds or 0)
        self.fieldOfView = fovAngle
    end

    function Warcraft3PlayerCamera:getFieldOfView()
        if self.player:isLocalPlayer() then
            return CameraNatives.GetField(CameraNatives.FIELDS.FIELD_OF_VIEW)
        else
            -- todo: fetch remote player data
        end
    end

    ---@param magnitude number
    ---@param velocity number
    function Warcraft3PlayerCamera:setCameraNoise(magnitude, velocity)
        self.cameraNoiseMagnitude = magnitude
        self.cameraNoiseVelocity = velocity
    end

    function Warcraft3PlayerCamera:getCameraNoise()
        if self.player:isLocalPlayer() then
            return self.cameraNoiseMagnitude, self.cameraNoiseVelocity
        else
            -- todo: fetch remote player data
        end
    end

    ---@param magnitude number
    ---@param velocity number
    function Warcraft3PlayerCamera:setTargetNoise(magnitude, velocity)
        self.targetNoiseMagnitude = magnitude
        self.targetNoiseVelocity = velocity
    end

    function Warcraft3PlayerCamera:getTargetNoise()
        if self.player:isLocalPlayer() then
            return self.targetNoiseMagnitude, self.targetNoiseVelocity
        else
            -- todo: fetch remote player data
        end
    end

    ---@param focalDistance number
    function Warcraft3PlayerCamera:setFocalDistance(focalDistance)
        self.focalDistance = focalDistance
    end

    function Warcraft3PlayerCamera:getFocalDistance()
        return self.focalDistance
    end

    ---@param depth number
    function Warcraft3PlayerCamera:setDepthOfField(depth)
        self.depthOfField = depth
    end

    function Warcraft3PlayerCamera:getDepthOfField()
        return self.depthOfField
    end

    -- todo: make filter class + check about cinematicfilterduration thinggy, it didn't work in testing....
    ---@param filter any
    ---@param seconds number
    function Warcraft3PlayerCamera:setFilter(filter, seconds)
    end

    function Warcraft3PlayerCamera:getFilter()
    end

    return Warcraft3PlayerCamera
end)
if Debug then Debug.endFile() end
