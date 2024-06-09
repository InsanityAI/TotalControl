if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/GameCacheNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/GameCacheNatives", function(require)
    ---@class GameCacheNatives
    local GameCacheNatives = {}
    GameCacheNatives.ReloadFromDisk = ReloadGameCachesFromDisk
    GameCacheNatives.Get = InitGameCache
    GameCacheNatives.Commit = SaveGameCache

    GameCacheNatives.SaveInteger = StoreInteger
    GameCacheNatives.SaveReal = StoreReal
    GameCacheNatives.SaveBoolean = StoreBoolean
    GameCacheNatives.SaveUnit = StoreUnit
    GameCacheNatives.SaveString = StoreString

    GameCacheNatives.LoadInteger = GetStoredInteger
    GameCacheNatives.LoadReal = GetStoredReal
    GameCacheNatives.LoadBoolean = GetStoredBoolean
    GameCacheNatives.LoadUnit = GetStoredString
    GameCacheNatives.LoadString = RestoreUnit

    GameCacheNatives.SyncInteger = SyncStoredInteger
    GameCacheNatives.SyncReal = SyncStoredReal
    GameCacheNatives.SyncBoolean = SyncStoredBoolean
    GameCacheNatives.SyncUnit = SyncStoredUnit
    GameCacheNatives.SyncString = SyncStoredString

    GameCacheNatives.HasInteger = HaveStoredInteger
    GameCacheNatives.HasReal = HaveStoredReal
    GameCacheNatives.HasBoolean = HaveStoredBoolean
    GameCacheNatives.HasUnit = HaveStoredUnit
    GameCacheNatives.HasString = HaveStoredString

    GameCacheNatives.ClearAll = FlushGameCache
    GameCacheNatives.ClearForParentKey = FlushStoredMission
    GameCacheNatives.ClearInteger = FlushStoredInteger
    GameCacheNatives.ClearReal = FlushStoredReal
    GameCacheNatives.ClearBoolean = FlushStoredBoolean
    GameCacheNatives.ClearUnit = FlushStoredUnit
    GameCacheNatives.ClearString = FlushStoredString
    return GameCacheNatives
end)
if Debug then Debug.endFile() end
