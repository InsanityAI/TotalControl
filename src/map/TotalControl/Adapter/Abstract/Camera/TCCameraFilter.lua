---@class TCCameraFilter
---@field create fun(): TCCameraFilter
---@field setTexture fun(self: TCCameraFilter, texture: texturePath)
---@field getTexture fun(self: TCCameraFilter): texturePath
---@field setBlendMode fun(self: TCCameraFilter, blendMode: TCImageBlendMode) 
---@field getBlendMode fun(self: TCCameraFilter): TCImageBlendMode
---@field setTexMapMode fun(self: TCCameraFilter, textMapMode: TCTexMapMode)
---@field getTexMapMode fun(self: TCCameraFilter): TCTexMapMode
---@field setStartUV fun(self: TCCameraFilter, minU: integer, minV: integer, maxU: integer, maxV: integer)
---@field getStartUV fun(self: TCCameraFilter): minU: integer, minV: integer, maxU: integer, maxV: integer
---@field setEndUV fun(self: TCCameraFilter, minU: integer, minV: integer, maxU: integer, maxV: integer)
---@field getEndUV fun(self: TCCameraFilter): minU: integer, minV: integer, maxU: integer, maxV: integer
---@field setStartColor fun(self: TCCameraFilter, colorRed: integer, colorGreen: integer, colorBlue: integer, alpha: integer)
---@field getStartColor fun(self: TCCameraFilter): colorRed: integer, colorGreen: integer, colorBlue: integer, alpha: integer
---@field setEndColor fun(self: TCCameraFilter, colorRed: integer, colorGreen: integer, colorBlue: integer, alpha: integer)
---@field getEndColor fun(self: TCCameraFilter): colorRed: integer, colorGreen: integer, colorBlue: integer, alpha: integer