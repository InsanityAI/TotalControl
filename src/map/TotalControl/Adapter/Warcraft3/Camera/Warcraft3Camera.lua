if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Camera/Warcraft3Camera" end
OnInit.module("TotalControl/Adapter/Warcraft3/Camera/Warcraft3Camera", function(require)
    local Warcraft3PlayerCamera = require "TotalControl/Adapter/Warcraft3/Camera/Warcraft3PlayerCamera" ---@type Warcraft3PlayerCamera

    ---@class Warcraft3Camera: TCCamera
    ---@field package x coordinate
    ---@field package y coordinate
    ---@field package z coordinate
    ---@field package targetRotation radians
    ---@field package targetAngleOfAttack radians
    ---@field package targetRoll radians
    ---@field package yaw radians
    ---@field package pitch radians
    ---@field package roll radians
    ---@field package fieldOfView radians
    ---@field package cameraNoiseMagnitude number
    ---@field package cameraNoiseVelocity number
    ---@field package targetNoiseMagnitude number
    ---@field package targetNoiseVelocity number
    ---@field package focalDistance number
    ---@field package depthOfField number
    ---@field package renderingFar number
    ---@field package renderingNear number

    local Warcraft3Camera = {}
    Warcraft3Camera.__index = Warcraft3Camera

    ---@param player TCPlayer
    ---@return TCCamera
    -- needs cache
    function Warcraft3Camera.GetPlayerCamera(player)
        return setmetatable({
            player = player,
            noiseSource = 0,
            noiseTarget = 0,
            focalDistance = 0, -- check what's wc3 default in reforged?
            depthOfField = 0   -- check what's wc3 default in reforged?
        }, Warcraft3PlayerCamera)
    end

    ---@return TCCamera
    function Warcraft3Camera.create()
        return setmetatable({
            x = 0,
            y = 0,
            z = 0,
            targetRotation = 0,
            targetAngleOfAttack = 0,
            targetRoll = 0,
            yaw = 0,
            pitch = 0,
            roll = 0,
            zoom = 1,
            fieldOfView = 70,
            noiseSource = 0,
            noiseTarget = 0,
            focalDistance = 0, -- check what's wc3 default in reforged?
            depthOfField = 0,   -- check what's wc3 default in reforged?
            renderingFar = 0, -- check wc3 default
            renderingNear = 10
        }, Warcraft3Camera)
    end

    function Warcraft3Camera:stop()
        -- stop camera movements
        -- todo:
    end

    ---@param x coordinate?
    ---@param y coordinate?
    ---@param z coordinate?
    ---@param seconds number?
    function Warcraft3Camera:setPosition(x, y, z, seconds)
        self.x = x or self.x
        self.y = y or self.y
        self.z = z or self.z
        -- todo: movement
    end

    function Warcraft3Camera:getPosition()
        return self.x, self.y, self.z
    end

    ---@param yaw radians?
    ---@param pitch radians?
    ---@param roll radians?
    ---@param seconds number?
    function Warcraft3Camera:setRotation(yaw, pitch, roll, seconds)
        self.yaw = yaw or self.yaw
        self.pitch = pitch or self.pitch
        self.roll = roll or self.roll
        -- todo: movement
    end

    function Warcraft3Camera:getRotation()
        return self.yaw, self.pitch, self.roll
    end

    ---@param rotation radians?
    ---@param angleOfAttack radians?
    ---@param roll radians?
    ---@param seconds number?
    function Warcraft3Camera:setTargetRotation(rotation, angleOfAttack, roll, seconds)
        self.targetRotation = rotation or self.targetRotation
        self.targetAngleOfAttack = angleOfAttack or self.targetAngleOfAttack
        self.targetRoll = roll or self.targetRoll
        -- todo: movement
    end

    function Warcraft3Camera:getTargetRotation()
        return self.targetRotation, self.targetAngleOfAttack, self.targetRoll
    end

    ---@param fovAngle scale
    ---@param seconds number?
    function Warcraft3Camera:setFieldOfView(fovAngle, seconds)
        self.fieldOfView = fovAngle
        -- todo: movement
    end

    function Warcraft3Camera:getFieldOfView()
        return self.fieldOfView
    end

    ---@param magnitude number
    ---@param velocity number
    function Warcraft3Camera:setCameraNoise(magnitude, velocity)
        self.cameraNoiseMagnitude = magnitude
        self.cameraNoiseVelocity = velocity
    end

    function Warcraft3Camera:getCameraNoise()
        return self.cameraNoiseMagnitude, self.cameraNoiseVelocity
    end

    ---@param magnitude number
    ---@param velocity number
    function Warcraft3Camera:setTargetNoise(magnitude, velocity)
        self.targetNoiseMagnitude = magnitude
        self.targetNoiseVelocity = velocity
    end

    function Warcraft3Camera:getTargetNoise()
        return self.targetNoiseMagnitude, self.targetNoiseVelocity
    end

    ---@param focalDistance number
    function Warcraft3Camera:setFocalDistance(focalDistance)
        self.focalDistance = focalDistance
    end

    function Warcraft3Camera:getFocalDistance()
        return self.focalDistance
    end

    ---@param depth number
    function Warcraft3Camera:setDepthOfField(depth)
        self.depthOfField = depth
    end

    function Warcraft3Camera:getDepthOfField()
        return self.depthOfField
    end

    ---@param far number?
    ---@param near number?
    ---@param seconds number?
    function Warcraft3Camera:setRenderingDistances(far, near, seconds)
        self.far = far or self.far
        self.near = near or self.near
        -- todo: movement
    end

    function Warcraft3Camera:getRenderingDistances()
        return self.far, self.near
    end

    -- todo: make filter class + check about cinematicfilterduration thinggy, it didn't work in testing....
    ---@param filter any
    ---@param seconds number
    function Warcraft3Camera:setFilter(filter, seconds)
    end

    function Warcraft3Camera:getFilter()
    end

    return Warcraft3Camera
end)
if Debug then Debug.endFile() end
