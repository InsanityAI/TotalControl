if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/MusicNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/MusicNatives", function (require)
    ---@class MusicNatives
    local MusicNatives = {}
    MusicNatives.set = SetMapMusic
    MusicNatives.clear = ClearMapMusic
    MusicNatives.play = PlayMusic
    MusicNatives.playEx = PlayMusicEx
    MusicNatives.stop = StopMusic
    MusicNatives.resume = ResumeMusic
    MusicNatives.playThematic = PlayThematicMusic
    MusicNatives.playThematicEx = PlayThematicMusicEx
    MusicNatives.endThematic = EndThematicMusic
    MusicNatives.setVolume = SetMusicVolume
    MusicNatives.setPlayPosition = SetMusicPlayPosition
    MusicNatives.setThematicVolume = SetThematicMusicVolume
    MusicNatives.setThematicPlayPosition = SetThematicMusicPlayPosition
    return MusicNatives
end)
if Debug then Debug.endFile() end