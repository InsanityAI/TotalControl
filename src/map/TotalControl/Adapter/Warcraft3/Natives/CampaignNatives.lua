if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/CampaignNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/CampaignNatives", function(require)
    ---@class CampaignNatives
    local CampaignNatives = {}
    CampaignNatives.SetTutorialCleared = SetTutorialCleared
    CampaignNatives.SetMissionAvailable = SetMissionAvailable
    CampaignNatives.SetCampaignAvailable = SetCampaignAvailable
    CampaignNatives.SetOpCinematicAvailable = SetOpCinematicAvailable
    CampaignNatives.SetEdCinematicAvailable = SetEdCinematicAvailable
    CampaignNatives.GetDefaultDifficulty = GetDefaultDifficulty
    CampaignNatives.SetDefaultDifficulty = SetDefaultDifficulty
    CampaignNatives.SetCustomCampaignButtonVisible = SetCustomCampaignButtonVisible
    CampaignNatives.GetCustomCampaignButtonVisible = GetCustomCampaignButtonVisible
    CampaignNatives.DoNotSaveReplay = DoNotSaveReplay -- Is this Campaign-only?
    CampaignNatives.ChangeLevel = ChangeLevel
    CampaignNatives.ForceSelectScreen = ForceCampaignSelectScreen
    CampaignNatives.SetMenuRace = SetCampaignMenuRaceEx --SetCampaignMenuRace is deprecated
    return CampaignNatives
end)
if Debug then Debug.endFile() end
