if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/WeatherEffectNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/WeatherEffectNatives", function(require)
    ---@class WeatherEffectNatives
    local WeatherEffectNatives = {}
    WeatherEffectNatives.Create = AddWeatherEffect
    WeatherEffectNatives.Destroy = RemoveWeatherEffect
    WeatherEffectNatives.Show = EnableWeatherEffect
    return WeatherEffectNatives
end)
if Debug then Debug.endFile() end
