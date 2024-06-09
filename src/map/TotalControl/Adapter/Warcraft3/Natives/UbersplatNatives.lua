if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/UbersplatNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/UbersplatNatives", function(require)
    ---@class UbersplatNatives
    local UbersplatNatives = {}
    UbersplatNatives.Create = CreateUbersplat
    UbersplatNatives.Destroy = DestroyUbersplat
    -- ResetUbersplat - NoOp apparently
    -- FinishUbersplat - NoOp apparently
    -- Assuming similar issues as is with ImageNatives
    UbersplatNatives.Show = SetUbersplatRenderAlways
    UbersplatNatives.ShowDeprecated = ShowUbersplat
    -- SetUbersplatRender - Probably NoOp
    return UbersplatNatives
end)
if Debug then Debug.endFile() end
