if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/LocationNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/LocationNatives", function (require)
    ---@class LocationNatives
    local LocationNatives = {}
    LocationNatives.Create = Location
    LocationNatives.Destroy = RemoveLocation
    LocationNatives.SetPosition = MoveLocation
    LocationNatives.GetX = GetLocationX
    LocationNatives.GetY = GetLocationY
    LocationNatives.GetZ = GetLocationZ
    return LocationNatives
end)
if Debug then Debug.endFile() end