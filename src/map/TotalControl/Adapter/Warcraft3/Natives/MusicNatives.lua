if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/MusicNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/MusicNatives", function (require)
    ---@class MusicNatives
    local MusicNatives = {}
    MusicNatives.Set = SetMapMusic
    MusicNatives.Clear = ClearMapMusic
    MusicNatives.Play = PlayMusic
    MusicNatives.PlayEx = PlayMusicEx
    MusicNatives.Stop = StopMusic
    MusicNatives.Resume = ResumeMusic
    MusicNatives.PlayThematic = PlayThematicMusic
    MusicNatives.PlayThematicEx = PlayThematicMusicEx
    MusicNatives.EndThematic = EndThematicMusic
    MusicNatives.SetVolume = SetMusicVolume
    MusicNatives.SetPlayPosition = SetMusicPlayPosition
    MusicNatives.SetThematicVolume = SetThematicMusicVolume
    MusicNatives.SetThematicPlayPosition = SetThematicMusicPlayPosition

    ---@see https://www.hiveworkshop.com/threads/quirks-of-sounds.201362/
    return MusicNatives
end)
if Debug then Debug.endFile() end