if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/StringNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/StringNatives", function(require)
    ---@class StringNatives
    local StringNatives = {}
    StringNatives.IntegerToReal = I2R
    StringNatives.RealToInteger = R2I
    StringNatives.IntegerToString = I2S
    StringNatives.RealToString = R2S
    StringNatives.RealToStringWithWidth = R2SW
    StringNatives.StringToInteger = S2I
    StringNatives.StringToReal = S2R
    StringNatives.Substring = SubString
    StringNatives.Length = StringLength
    StringNatives.Case = StringCase
    StringNatives.Hash = StringHash
    StringNatives.GetLocalizedString = GetLocalizedString
    StringNatives.GetLocalizedHotkey = GetLocalizedHotkey
    StringNatives.ParseTags = ParseTags
    StringNatives.GetObjectName = GetObjectName
    StringNatives.GetAbilityId = AbilityId
    StringNatives.GetAbilityInternalName = AbilityId2String
    StringNatives.GetUnitId = UnitId
    StringNatives.GetUnitInternalName = UnitId2String
    StringNatives.GetOrderId = OrderId
    StringNatives.GetOrderInternalName = OrderId2String
    StringNatives.FourCC = FourCC
    return StringNatives
end)
if Debug then Debug.endFile() end
