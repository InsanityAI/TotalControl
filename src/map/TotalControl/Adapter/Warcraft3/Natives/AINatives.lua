if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/AINatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/AINatives", function(require)
    ---@class AINatives
    local AINatives = {}
    AINatives.StartMelee = StartMeleeAI
    AINatives.StartCampaign = StartCampaignAI
    AINatives.Command = CommandAI
    AINatives.Pause = PauseCompAI
    AINatives.GetDifficulty = GetAIDifficulty
    AINatives.RemoveGuardPosition = RemoveGuardPosition
    AINatives.RecycleGuardPosition = RecycleGuardPosition
    AINatives.RemoveAllGuardPositions = RemoveAllGuardPositions
    return AINatives
end)
if Debug then Debug.endFile() end
