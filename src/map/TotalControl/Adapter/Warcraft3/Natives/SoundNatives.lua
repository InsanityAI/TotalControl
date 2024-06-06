if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/SoundNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/SoundNatives", function (require)
    local ConstantCache = require "TotalControl/Adapter/Warcraft/Cache/ConstantCache" ---@type ConstantCache
    ---@class SoundNatives
    local SoundNatives = {}
    SoundNatives.newSoundEnvironment = NewSoundEnvironment
    SoundNatives.create = CreateSound
    SoundNatives.createWithSLKEntry = CreateSoundFilenameWithLabel
    SoundNatives.createFromLabel = CreateSoundFromLabel
    SoundNatives.createMIDI = CreateMIDISound
    SoundNatives.setParamsFromLabel = SetSoundParamsFromLabel
    SoundNatives.setDistanceCutoff = SetSoundDistanceCutoff
    SoundNatives.setChannel = SetSoundChannel
    SoundNatives.setVolume = SetSoundVolume
    SoundNatives.setPitch = SetSoundPitch
    SoundNatives.setPlayPosition = SetSoundPlayPosition
    SoundNatives.setDistances = SetSoundDistances
    SoundNatives.setConeAngles = SetSoundConeAngles
    SoundNatives.setConeOrientation = SetSoundConeOrientation
    SoundNatives.setPosition = SetSoundPosition
    SoundNatives.setVelocity = SetSoundVelocity
    SoundNatives.attachToUnit = AttachSoundToUnit
    SoundNatives.start = StartSound
    SoundNatives.startEx = StartSoundEx
    SoundNatives.stop = StopSound
    SoundNatives.killWhenDone = KillSoundWhenDone
    SoundNatives.setDuration = SetSoundDuration
    SoundNatives.getDuration = GetSoundDuration
    SoundNatives.getFileDuration = GetSoundFileDuration
    SoundNatives.isPlaying = GetSoundIsPlaying
    SoundNatives.isLoading = GetSoundIsLoading
    SoundNatives.registerStacked = RegisterStackedSound
    SoundNatives.unregisterStacked = UnregisterStackedSound
    SoundNatives.setFacialAnimationLabel = SetSoundFacialAnimationLabel
    SoundNatives.setFacialAnimationGroupLabel = SetSoundFacialAnimationGroupLabel
    SoundNatives.setFacialAnimationFilepath = SetSoundFacialAnimationSetFilepath
    SoundNatives.setDialogueSpeakerNameKey = SetDialogueSpeakerNameKey
    SoundNatives.getDialogueSpeakerNameKey = GetDialogueSpeakerNameKey
    SoundNatives.setDialogueTextKey = SetDialogueTextKey
    SoundNatives.getDialogueTextKey = GetDialogueTextKey
    SoundNatives.setVolumeGroupVolume = VolumeGroupSetVolume
    SoundNatives.resetVolumeGroupVolume = VolumeGroupReset

    ConstantCache(SoundNatives, "getFileDuration")

    return SoundNatives
end)
if Debug then Debug.endFile() end