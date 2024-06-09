if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/MiscellaneousNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/MiscellaneousNatives", function(require)
    ---@class MiscellaneousNatives
    local MiscellaneousNatives = {}
    MiscellaneousNatives.Cheat = Cheat
    MiscellaneousNatives.IsNoVictoryCheat = IsNoVictoryCheat
    MiscellaneousNatives.IsNoDefeatCheat = IsNoDefeatCheat
    MiscellaneousNatives.AutomationSetTestType = AutomationSetTestType
    MiscellaneousNatives.AutomationTestStart = AutomationTestStart
    MiscellaneousNatives.AutomationTestEnd = AutomationTestEnd
    MiscellaneousNatives.AutomationTestingFinished = AutomationTestingFinished
    MiscellaneousNatives.RequestExtraIntegerData = RequestExtraIntegerData
    MiscellaneousNatives.RequestExtraBooleanData = RequestExtraBooleanData
    MiscellaneousNatives.RequestExtraStringData = RequestExtraStringData
    MiscellaneousNatives.RequestExtraRealData = RequestExtraRealData
    MiscellaneousNatives.StartRecording = BlzStartRecording
    MiscellaneousNatives.EndRecording = BlzEndRecording
    MiscellaneousNatives.JASSArray = __jarray
    return MiscellaneousNatives
end)
if Debug then Debug.endFile() end
