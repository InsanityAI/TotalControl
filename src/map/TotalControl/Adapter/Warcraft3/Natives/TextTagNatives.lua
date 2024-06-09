if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/TextTagNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/TextTagNatives", function(require)
    ---@class TextTagNatives
    local TextTagNatives = {}
    TextTagNatives.Create = CreateTextTag
    TextTagNatives.Destroy = DestroyTextTag
    TextTagNatives.SetText = SetTextTagText
    TextTagNatives.SetPosition = SetTextTagPos
    TextTagNatives.SetUnitPosition = SetTextTagPosUnit
    TextTagNatives.SetColor = SetTextTagColor
    TextTagNatives.SetVelocity = SetTextTagVelocity
    TextTagNatives.Show = SetTextTagVisibility
    TextTagNatives.Suspend = SetTextTagSuspended
    TextTagNatives.MakePermanent = SetTextTagPermanent
    TextTagNatives.SetAge = SetTextTagAge
    TextTagNatives.SetLifespan = SetTextTagLifespan
    TextTagNatives.SetFadepoint = SetTextTagFadepoint
    return TextTagNatives
end)
if Debug then Debug.endFile() end
