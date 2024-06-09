if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/ImageNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/ImageNatives", function(require)
    ---@class ImageNatives
    local ImageNatives = {}
    ImageNatives.Create = CreateImage
    ImageNatives.Destroy = DestroyImage
    ImageNatives.Show = SetImageRenderAlways
    ImageNatives.ShowDeprecated = ShowImage
    ImageNatives.SetConstantZ = SetImageConstantHeight
    ImageNatives.SetPosition = SetImagePosition
    ImageNatives.SetColor = SetImageColor
    ImageNatives.DrawOnWater = SetImageAboveWater
    ---@see https://lep.duckdns.org/jassbot/doc/SetImageType
    ImageNatives.SetLayer = SetImageType
    -- SetImageRender  - Apparently NoOp
    return ImageNatives
end)
if Debug then Debug.endFile() end
