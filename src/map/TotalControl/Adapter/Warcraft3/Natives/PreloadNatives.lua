if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/PreloadNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/PreloadNatives", function(require)
    ---@class PreloadNatives
    local PreloadNatives = {}
    PreloadNatives.Preload = Preload -- this honestly should have been 2 functions with how versatile it is...
    PreloadNatives.RunScript = Preloader
    PreloadNatives.ScriptStart = PreloadStart
    PreloadNatives.Refresh = PreloadRefresh
    PreloadNatives.ScriptEnd = PreloadEnd
    PreloadNatives.EndEx = PreloadEndEx
    PreloadNatives.GenerateScriptStart = PreloadGenStart
    PreloadNatives.GenerateScriptEnd = PreloadGenEnd
    PreloadNatives.ClearOutputBuffer = PreloadGenClear
    return PreloadNatives
end)
if Debug then Debug.endFile() end
