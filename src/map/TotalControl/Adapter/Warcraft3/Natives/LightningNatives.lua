if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/LightningNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/LightningNatives", function(require)
    ---@class LightningNatives
    local LightningNatives = {}
    LightningNatives.Create = AddLightning
    LightningNatives.CreateWithZ = AddLightningEx
    LightningNatives.Destroy = DestroyLightning
    LightningNatives.SetPositions = MoveLightning
    LightningNatives.SetPositionsWithZ = MoveLightningEx
    LightningNatives.SetColor = SetLightningColor
    LightningNatives.GetAlpha = GetLightningColorA
    LightningNatives.GetColorRed = GetLightningColorR
    LightningNatives.GetColorGreen = GetLightningColorG
    LightningNatives.GetColorBlue = GetLightningColorB
    return LightningNatives
end)
if Debug then Debug.endFile() end
