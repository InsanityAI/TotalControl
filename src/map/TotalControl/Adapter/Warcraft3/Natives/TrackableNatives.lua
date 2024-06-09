if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/TrackableNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/TrackableNatives", function(require)
    ---@class TrackableNatives
    local TrackableNatives = {}
    TrackableNatives.Create = CreateTrackable
    return TrackableNatives
end)
if Debug then Debug.endFile() end
