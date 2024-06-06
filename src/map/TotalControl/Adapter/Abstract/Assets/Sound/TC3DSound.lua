---@class TC3DSound: TCAsset
---@field create fun(filePath: soundPath, looping: boolean, fadeInRate: integer, fadeOutRate: integer, environment: TC_SOUND_SETTING): TC3DSound
---@field play fun(self: TC3DSound, x: coordinate, y: coordinate, z: coordinate, seekmillis: integer?): TC3DSoundInstance
---@field isLooping fun(self: TC3DSound): boolean
---@field setLooping fun(self: TC3DSound, looping: boolean)
---@field setFadeInRate fun(self: TC3DSound, fadeInRate: integer)
---@field getFadeInRate fun(self: TC3DSound): integer
---@field setFadeOutRate fun(self: TC3DSound, fadeOutRate: integer)
---@field getFadeOutRate fun(self: TC3DSound): integer
---@field setEnvironment fun(self: TC3DSound, environment: TC_SOUND_SETTING)
---@field getEnvironment fun(self: TC3DSound): TC_SOUND_SETTING
---@field setPitch fun(self: TC3DSound, pitch: number)
---@field getPitch fun(self: TC3DSound)
---@field setVolume fun(self: TC3DSound, volume: percentile)
---@field getVolume fun(self: TC3DSound): percentile
---@field setChannel fun(self: TC3DSound, channel: integer)
---@field getChannel fun(self: TC3DSound): integer
---@field setDuration fun(self: TC3DSound, duration: integer)
---@field getDuration fun(self: TC3DSound): integer
---@field setDistanceCutoff fun(self: TC3DSound, distance: number)
---@field getDistanceCutoff fun(self: TC3DSound): number
---@field setMinMaxDistances fun(self: TC3DSound, min: number, max: number)
---@field getMinMaxDistances fun(self: TC3DSound): min: number, max: number
---@field setVelocities fun(self: TC3DSound, x: vector, y: vector, z: vector)
---@field getVelocities fun(self: TC3DSound): x: vector, y: vector, z: vector
---@field setPosition fun(self:TC3DSound, x: coordinate, y: coordinate, z: coordinate)
---@field getPosition fun(self: TC3DSound): x: coordinate, y: coordinate, z: coordinate
---@field setConeAngles fun(self: TC3DSound, inside: radians, outside: radians)
---@field getConeAngles fun(self: TC3DSound): inside: radians, outside: radians
---@field setOutsideVolume fun(self: TC3DSound, volume: percentile)
---@field getOutsideVolume fun(self: TC3DSound): percentile
---@field setConeOrientation fun(self: TC3DSound, x: vector, y: vector, z: vector)
---@field getConeOrientation fun(self: TC3DSound): x: vector, y: vector, z: vector
---@see https://learn.microsoft.com/en-us/windows/win32/xaudio2/coordinates-of-3d-space
---@see https://learn.microsoft.com/en-us/windows/win32/xaudio2/sound-cones