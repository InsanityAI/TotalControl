if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/AbilityNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/AbilityNatives", function(require)
    ---@class AbilityNatives
    local AbilityNatives = { UI = {}, PropertyField = {} }
    AbilityNatives.GetEffect = GetAbilityEffect
    AbilityNatives.GetEffectById = GetAbilityEffectById
    AbilityNatives.GetSound = GetAbilitySound
    AbilityNatives.GetSoundById = GetAbilitySoundById
    AbilityNatives.GetManaCost = BlzGetAbilityManaCost
    AbilityNatives.GetCooldown = BlzGetAbilityCooldown
    AbilityNatives.GetId = BlzGetAbilityId

    AbilityNatives.PropertyField.SetBoolean = BlzSetAbilityBooleanField
    AbilityNatives.PropertyField.GetBoolean = BlzGetAbilityBooleanField
    AbilityNatives.PropertyField.SetInteger = BlzSetAbilityIntegerField
    AbilityNatives.PropertyField.GetInteger = BlzGetAbilityIntegerField
    AbilityNatives.PropertyField.SetReal = BlzSetAbilityRealField
    AbilityNatives.PropertyField.GetReal = BlzGetAbilityRealField
    AbilityNatives.PropertyField.SetString = BlzSetAbilityStringField
    AbilityNatives.PropertyField.GetString = BlzGetAbilityStringField
    AbilityNatives.PropertyField.SetLevelBoolean = BlzSetAbilityBooleanLevelField
    AbilityNatives.PropertyField.GetLevelBoolean = BlzGetAbilityBooleanLevelField
    AbilityNatives.PropertyField.SetLevelInteger = BlzSetAbilityIntegerLevelField
    AbilityNatives.PropertyField.GetLevelInteger = BlzGetAbilityIntegerLevelField
    AbilityNatives.PropertyField.SetLevelReal = BlzSetAbilityRealLevelField
    AbilityNatives.PropertyField.GetLevelReal = BlzGetAbilityRealLevelField
    AbilityNatives.PropertyField.SetLevelString = BlzSetAbilityStringLevelField
    AbilityNatives.PropertyField.GetLevelString = BlzGetAbilityStringLevelField
    AbilityNatives.PropertyField.SetLevelArrayBoolean = BlzSetAbilityBooleanLevelArrayField
    AbilityNatives.PropertyField.GetLevelArrayBoolean = BlzGetAbilityBooleanLevelArrayField
    AbilityNatives.PropertyField.AddLevelArrayBoolean = BlzAddAbilityBooleanLevelArrayField
    AbilityNatives.PropertyField.RemoveLevelArrayBoolean = BlzRemoveAbilityBooleanLevelArrayField
    AbilityNatives.PropertyField.SetLevelArrayInteger = BlzSetAbilityIntegerLevelArrayField
    AbilityNatives.PropertyField.GetLevelArrayInteger = BlzGetAbilityIntegerLevelArrayField
    AbilityNatives.PropertyField.AddLevelArrayInteger = BlzAddAbilityIntegerLevelArrayField
    AbilityNatives.PropertyField.RemoveLevelArrayInteger = BlzRemoveAbilityIntegerLevelArrayField
    AbilityNatives.PropertyField.SetLevelArrayReal = BlzSetAbilityRealLevelArrayField
    AbilityNatives.PropertyField.GetLevelArrayReal = BlzGetAbilityRealLevelArrayField
    AbilityNatives.PropertyField.AddLevelArrayReal = BlzAddAbilityRealLevelArrayField
    AbilityNatives.PropertyField.RemoveLevelArrayReal = BlzRemoveAbilityRealLevelArrayField
    AbilityNatives.PropertyField.SetLevelArrayString = BlzSetAbilityStringLevelArrayField
    AbilityNatives.PropertyField.GetLevelArrayString = BlzGetAbilityStringLevelArrayField
    AbilityNatives.PropertyField.AddLevelArrayString = BlzAddAbilityStringLevelArrayField
    AbilityNatives.PropertyField.RemoveLevelArrayString = BlzRemoveAbilityStringLevelArrayField

    AbilityNatives.UI.SetTooltip = BlzSetAbilityTooltip
    AbilityNatives.UI.GetTooltip = BlzGetAbilityTooltip
    AbilityNatives.UI.SetActivatedTooltip = BlzSetAbilityActivatedTooltip
    AbilityNatives.UI.GetActivatedTooltip = BlzGetAbilityActivatedTooltip
    AbilityNatives.UI.SetExtendedTooltip = BlzSetAbilityExtendedTooltip
    AbilityNatives.UI.GetExtendedTooltip = BlzGetAbilityExtendedTooltip
    AbilityNatives.UI.SetActivatedExtendedTooltip = BlzSetAbilityActivatedExtendedTooltip
    AbilityNatives.UI.GetActivatedExtendedTooltip = BlzGetAbilityActivatedExtendedTooltip
    AbilityNatives.UI.SetLearnSkillTooltip = BlzSetAbilityResearchTooltip
    AbilityNatives.UI.GetLearnSkillTooltip = BlzGetAbilityResearchTooltip
    AbilityNatives.UI.SetLearnSkillExtendedTooltip = BlzSetAbilityResearchExtendedTooltip
    AbilityNatives.UI.GetLearnSkillExtendedTooltip = BlzGetAbilityResearchExtendedTooltip
    AbilityNatives.UI.SetIcon = BlzSetAbilityIcon
    AbilityNatives.UI.GetIcon = BlzGetAbilityIcon
    AbilityNatives.UI.SetActivatedIcon = BlzSetAbilityActivatedIcon
    AbilityNatives.UI.GetActivatedIcon = BlzGetAbilityActivatedIcon
    AbilityNatives.UI.SetCommandCardX = BlzSetAbilityPosX
    AbilityNatives.UI.GetCommandCardX = BlzGetAbilityPosX
    AbilityNatives.UI.SetCommandCardY = BlzSetAbilityPosY
    AbilityNatives.UI.GetCommandCardY = BlzGetAbilityPosY
    AbilityNatives.UI.SetCommandCardActivatedX = BlzSetAbilityActivatedPosX
    AbilityNatives.UI.GetCommandCardActivatedX = BlzGetAbilityActivatedPosX
    AbilityNatives.UI.SetCommandCardActivatedY = BlzSetAbilityActivatedPosY
    AbilityNatives.UI.GetCommandCardActivatedY = BlzGetAbilityActivatedPosY
    return AbilityNatives
end)
if Debug then Debug.endFile() end
