if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/PlayerForceNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/PlayerForceNatives", function (require)
    ---@class PlayerForceNatives
    local PlayerForceNatives = {}
    PlayerForceNatives.Create = CreateForce
    PlayerForceNatives.Destroy = DestroyForce
    PlayerForceNatives.AddPlayer = ForceAddPlayer
    PlayerForceNatives.RemovePlayer = ForceRemovePlayer
    PlayerForceNatives.ContainsPlayer = BlzForceHasPlayer
    PlayerForceNatives.ContainsUnit = IsUnitInForce
    PlayerForceNatives.Clear = ForceClear
    PlayerForceNatives.EnumPlayers = ForceEnumPlayers
    PlayerForceNatives.EnumPlayersCounter = ForceEnumPlayersCounted
    PlayerForceNatives.EnumAllies = ForceEnumAllies
    PlayerForceNatives.EnumEnemies = ForceEnumEnemies
    PlayerForceNatives.ForEachPlayer = ForForce
    return PlayerForceNatives
end)
if Debug then Debug.endFile() end