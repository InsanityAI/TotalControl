if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/SoundNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/SoundNatives", function (require)
    local ConstantCache = require "TotalControl/Adapter/Warcraft/Cache/ConstantCache" ---@type ConstantCache
    ---@class SoundNatives
    local SoundNatives = {}
    SoundNatives.NewSoundEnvironment = NewSoundEnvironment
    SoundNatives.Create = CreateSound
    SoundNatives.CreateWithSLKEntry = CreateSoundFilenameWithLabel
    SoundNatives.CreateFromLabel = CreateSoundFromLabel
    SoundNatives.CreateMIDI = CreateMIDISound
    SoundNatives.SetParamsFromLabel = SetSoundParamsFromLabel
    SoundNatives.SetDistanceCutoff = SetSoundDistanceCutoff
    SoundNatives.SetChannel = SetSoundChannel
    SoundNatives.SetVolume = SetSoundVolume
    SoundNatives.SetPitch = SetSoundPitch
    SoundNatives.SetPlayPosition = SetSoundPlayPosition
    SoundNatives.SetDistances = SetSoundDistances
    SoundNatives.SetConeAngles = SetSoundConeAngles
    SoundNatives.SetConeOrientation = SetSoundConeOrientation
    SoundNatives.SetPosition = SetSoundPosition
    SoundNatives.SetVelocity = SetSoundVelocity
    SoundNatives.AttachToUnit = AttachSoundToUnit
    SoundNatives.Start = StartSound
    SoundNatives.StartEx = StartSoundEx
    SoundNatives.Stop = StopSound
    SoundNatives.KillWhenDone = KillSoundWhenDone
    SoundNatives.SetDuration = SetSoundDuration
    SoundNatives.GetDuration = GetSoundDuration
    SoundNatives.GetFileDuration = GetSoundFileDuration
    SoundNatives.IsPlaying = GetSoundIsPlaying
    SoundNatives.IsLoading = GetSoundIsLoading
    SoundNatives.RegisterStacked = RegisterStackedSound
    SoundNatives.UnregisterStacked = UnregisterStackedSound
    SoundNatives.SetFacialAnimationLabel = SetSoundFacialAnimationLabel
    SoundNatives.SetFacialAnimationGroupLabel = SetSoundFacialAnimationGroupLabel
    SoundNatives.SetFacialAnimationFilepath = SetSoundFacialAnimationSetFilepath
    SoundNatives.SetDialogueSpeakerNameKey = SetDialogueSpeakerNameKey
    SoundNatives.GetDialogueSpeakerNameKey = GetDialogueSpeakerNameKey
    SoundNatives.SetDialogueTextKey = SetDialogueTextKey
    SoundNatives.GetDialogueTextKey = GetDialogueTextKey
    SoundNatives.SetVolumeGroupVolume = VolumeGroupSetVolume
    SoundNatives.ResetVolumeGroupVolume = VolumeGroupReset

    ConstantCache(SoundNatives, "getFileDuration")

    ---@see https://www.hiveworkshop.com/threads/quirks-of-sounds.201362/
    return SoundNatives
end)
if Debug then Debug.endFile() end