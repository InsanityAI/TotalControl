if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/EffectNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/EffectNatives", function(require)
    ---@class EffectNatives
    local EffectNatives = {}
    EffectNatives.Create = AddSpecialEffect
    EffectNatives.CreateFromAbility = AddSpellEffect
    EffectNatives.CreateFromAbilityId = AddSpellEffectById

    EffectNatives.CreateAtLocation = AddSpecialEffectLoc
    EffectNatives.CreateFromAbilityAtLocation = AddSpellEffectLoc
    EffectNatives.CreateFromAbilityIdAtLocation = AddSpellEffectByIdLoc

    EffectNatives.CreateOnWidget = AddSpecialEffectTarget
    EffectNatives.CreateFromAbilityOnWidget = AddSpellEffectTarget
    EffectNatives.CreateFromAbilityOnWidgetId = AddSpellEffectTargetById

    EffectNatives.Destroy = DestroyEffect
    EffectNatives.SetColor = BlzSetSpecialEffectColor
    EffectNatives.SetTeamColor = BlzSetSpecialEffectColorByPlayer
    EffectNatives.SetAlpha = BlzSetSpecialEffectAlpha
    EffectNatives.SetScale = BlzSetSpecialEffectScale
    EffectNatives.GetScale = BlzGetSpecialEffectScale
    EffectNatives.SetMatrixScale = BlzSetSpecialEffectMatrixScale
    EffectNatives.ResetMatrixScale = BlzResetSpecialEffectMatrix
    EffectNatives.SetPosition = BlzSetSpecialEffectPosition
    EffectNatives.SetLocation = BlzSetSpecialEffectPositionLoc
    EffectNatives.SetX = BlzSetSpecialEffectX
    EffectNatives.GetX = BlzGetLocalSpecialEffectX
    EffectNatives.SetY = BlzSetSpecialEffectY
    EffectNatives.GetY = BlzGetLocalSpecialEffectY
    EffectNatives.SetZ = BlzSetSpecialEffectZ
    EffectNatives.GetZ = BlzGetLocalSpecialEffectZ
    EffectNatives.SetHeight = BlzSetSpecialEffectHeight
    EffectNatives.PlayAnimation = BlzPlaySpecialEffect
    EffectNatives.SeekAnimationTime = BlzSetSpecialEffectTime
    EffectNatives.SetTimeScale = BlzSetSpecialEffectTimeScale
    EffectNatives.PlayAnimationWithTimescale = BlzPlaySpecialEffectWithTimeScale

    EffectNatives.SetOrientation = BlzSetSpecialEffectOrientation
    EffectNatives.SetYaw = BlzSetSpecialEffectYaw
    EffectNatives.SetPitch = BlzSetSpecialEffectPitch
    EffectNatives.SetRoll = BlzSetSpecialEffectRoll
    EffectNatives.AddSubAnimation = BlzSpecialEffectAddSubAnimation
    EffectNatives.RemoveSubAnimation = BlzSpecialEffectRemoveSubAnimation
    EffectNatives.ClearSubAnimations = BlzSpecialEffectClearSubAnimations
    return EffectNatives
end)
if Debug then Debug.endFile() end
