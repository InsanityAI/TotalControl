if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/DoodadNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/DoodadNatives", function(require)
    ---@class DoodadNatives
    local DoodadNatives = {}
    DoodadNatives.SetAnimation = SetDoodadAnimation
    DoodadNatives.SetAnimationForAllInRect = SetDoodadAnimationRect
    return DoodadNatives
end)
if Debug then Debug.endFile() end
