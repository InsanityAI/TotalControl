if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/PlayerNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/PlayerNatives", function (require)
    ---@class PlayerNatives
    local PlayerNatives = {}
    PlayerNatives.GetPlayer = Player
    PlayerNatives.GetLocalPlayer = GetLocalPlayer
    PlayerNatives.IsPlayerAlly = IsPlayerAlly
    PlayerNatives.IsPlayerEnemy = IsPlayerEnemy
    PlayerNatives.IsInForce = IsPlayerInForce
    PlayerNatives.IsObserver = IsPlayerObserver
    PlayerNatives.IsPointVisible = IsVisibleToPlayer
    PlayerNatives.IsLocationVisible = IsLocationVisibleToPlayer
    PlayerNatives.IsPointFogged = IsFoggedToPlayer
    PlayerNatives.IsLocationFogged = IsLocationFoggedToPlayer
    PlayerNatives.IsPointMasked = IsMaskedToPlayer
    PlayerNatives.IsLocationMasked = IsLocationMaskedToPlayer
    PlayerNatives.GetRace = GetPlayerRace
    PlayerNatives.GetId = GetPlayerId
    PlayerNatives.GetUnitCount = GetPlayerUnitCount
    PlayerNatives.GetTypedUnitCount = GetPlayerTypedUnitCount
    PlayerNatives.GetStructureCount = GetPlayerStructureCount
    PlayerNatives.SetState = SetPlayerState
    PlayerNatives.GetState = GetPlayerState
    PlayerNatives.GetScore = GetPlayerScore
    PlayerNatives.GetAlliance = GetPlayerAlliance
    PlayerNatives.SetHandicap = SetPlayerHandicap
    PlayerNatives.GetHandicap = GetPlayerHandicap
    PlayerNatives.SetExpHandicap = SetPlayerHandicapXP
    PlayerNatives.GetExpHandicap = GetPlayerHandicapXP
    PlayerNatives.SetHandicapReviveTime = SetPlayerHandicapReviveTime
    PlayerNatives.GetHandicapReviveTime = GetPlayerHandicapReviveTime
    PlayerNatives.SetPlayerHandicapDamage = SetPlayerHandicapDamage
    PlayerNatives.GetPlayerHandicapDamage = GetPlayerHandicapDamage
    PlayerNatives.SetTechMaxAllowed = SetPlayerTechMaxAllowed
    PlayerNatives.GetPlayerTechMaxAllowed = GetPlayerTechMaxAllowed
    PlayerNatives.AddTechResearched = AddPlayerTechResearched
    PlayerNatives.SetTechResearched = SetPlayerTechResearched
    PlayerNatives.GetTechResearched = GetPlayerTechResearched
    PlayerNatives.GetTechCount = GetPlayerTechCount
    PlayerNatives.SetUnitsOwner = SetPlayerUnitsOwner
    PlayerNatives.Cripple = CripplePlayer
    PlayerNatives.SetAbilityAvailable = SetPlayerAbilityAvailable
    PlayerNatives.Remove = RemovePlayer
    PlayerNatives.CacheHeroData = CachePlayerHeroData
    return PlayerNatives
end)
if Debug then Debug.endFile() end