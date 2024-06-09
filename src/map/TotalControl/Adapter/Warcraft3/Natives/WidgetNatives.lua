if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/WidgetNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/WidgetNatives", function(require)
    ---@class WidgetNatives
    local WidgetNatives = {}
    WidgetNatives.GetHealth = GetWidgetLife
    WidgetNatives.SetHealth = SetWidgetLife
    WidgetNatives.GetX = GetWidgetX
    WidgetNatives.GetY = GetWidgetY
    return WidgetNatives
end)
if Debug then Debug.endFile() end