if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/CommandButtonNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/CommandButtonNatives", function(require)
    ---@class CommandButtonNatives
    local CommandButtonNatives = {}
    CommandButtonNatives.CreateAbilityButtonEffect = CreateCommandButtonEffect
    CommandButtonNatives.CreateUpgradeButtonEffect = CreateUpgradeCommandButtonEffect
    CommandButtonNatives.CreateLearnButtonEffect = CreateLearnCommandButtonEffect
    CommandButtonNatives.Destroy = DestroyCommandButtonEffect
    return CommandButtonNatives
end)
if Debug then Debug.endFile() end
