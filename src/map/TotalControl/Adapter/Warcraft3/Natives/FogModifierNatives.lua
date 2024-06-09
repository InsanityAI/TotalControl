if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/FogModifierNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/FogModifierNatives", function(require)
    ---@class FogModifierNatives
    local FogModifierNatives = {}
    FogModifierNatives.SetFogStateRect = SetFogStateRect
    FogModifierNatives.SetFogStateRadius = SetFogStateRadius
    FogModifierNatives.SetFogStateRadiusAroundLocation = SetFogStateRadiusLoc
    FogModifierNatives.EnableFogMask = FogMaskEnable
    FogModifierNatives.IsFogMaskEnabled = IsFogMaskEnabled
    FogModifierNatives.EnableFog = FogEnable
    FogModifierNatives.IsFogEnabled = IsFogEnabled
    FogModifierNatives.EnableWorldFogBoundary = EnableWorldFogBoundary

    FogModifierNatives.CreateAtRect = CreateFogModifierRect
    FogModifierNatives.CreateAtPoint = CreateFogModifierRadius
    FogModifierNatives.CreateAtLocation = CreateFogModifierRadiusLoc
    FogModifierNatives.Destroy = DestroyFogModifier
    FogModifierNatives.Start = FogModifierStart
    FogModifierNatives.Stop = FogModifierStop

    return FogModifierNatives
end)
if Debug then Debug.endFile() end
