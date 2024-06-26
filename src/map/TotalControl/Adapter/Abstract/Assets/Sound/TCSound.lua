---@class TCSound: TCAsset
---@field create fun(filePath: soundPath, looping: boolean, fadeInRate: integer, fadeOutRate: integer, environment: TC_SOUND_SETTING): TCSound
---@field play fun(self: TCSound, seekmillis: integer?): TCSoundInstance
---@field isLooping fun(self: TCSound): boolean
---@field setLooping fun(self: TCSound, looping: boolean)
---@field setFadeInRate fun(self: TCSound, fadeInRate: integer)
---@field getFadeInRate fun(self: TCSound): integer
---@field setFadeOutRate fun(self: TCSound, fadeOutRate: integer)
---@field getFadeOutRate fun(self: TCSound): integer
---@field setEnvironment fun(self: TCSound, environment: TC_SOUND_SETTING)
---@field getEnvironment fun(self: TCSound): TC_SOUND_SETTING
---@field setPitch fun(self: TCSound, pitch: number)
---@field getPitch fun(self: TCSound)
---@field setVolume fun(self: TCSound, volume: percentile)
---@field getVolume fun(self: TCSound): percentile
---@field setChannel fun(self: TCSound, channel: integer)
---@field getChannel fun(self: TCSound): integer
---@field setDuration fun(self: TCSound, duration: integer)
---@field getDuration fun(self: TCSound): integer
---@field setDistanceCutoff fun(self: TCSound, distance: number)
---@field getDistanceCutoff fun(self: TCSound): number