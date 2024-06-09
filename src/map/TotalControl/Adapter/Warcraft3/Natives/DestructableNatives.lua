if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/DestructableNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/DestructableNatives", function(require)
    ---@class DestructableNatives
    local DestructableNatives = {}
    DestructableNatives.Create = CreateDestructable
    DestructableNatives.CreateWithZ = CreateDestructableZ
    DestructableNatives.CreateWithSkin = BlzCreateDestructableWithSkin
    DestructableNatives.CreateWithSkinAndZ = BlzCreateDestructableZWithSkin
    DestructableNatives.CreateDead = CreateDeadDestructable
    DestructableNatives.CreateDeadWithZ = CreateDeadDestructableZ
    DestructableNatives.CreateDeadWithSkin = BlzCreateDeadDestructableWithSkin
    DestructableNatives.CreateDeadWithSkinAndZ = BlzCreateDeadDestructableZWithSkin
    DestructableNatives.Destroy = RemoveDestructable
    DestructableNatives.Kill = KillDestructable
    DestructableNatives.Revive = DestructableRestoreLife
    DestructableNatives.Show = ShowDestructable
    DestructableNatives.SetInvulnerable = SetDestructableInvulnerable
    DestructableNatives.IsInvulnerable = IsDestructableInvulnerable
    DestructableNatives.GetTypeId = GetDestructableTypeId
    DestructableNatives.GetHealth = GetDestructableLife
    DestructableNatives.SetHealth = SetDestructableLife
    DestructableNatives.GetMaxHealth = GetDestructableMaxLife
    DestructableNatives.SetMaxHealth = SetDestructableMaxLife
    DestructableNatives.GetX = GetDestructableX
    DestructableNatives.SetY = GetDestructableY
    DestructableNatives.GetName = GetDestructableName
    DestructableNatives.SetOccluderHeight = SetDestructableOccluderHeight
    DestructableNatives.GetOccluderHeight = GetDestructableOccluderHeight
    DestructableNatives.QueueAnimation = QueueDestructableAnimation
    DestructableNatives.SetAnimation = SetDestructableAnimation
    DestructableNatives.SetAnimationSpeed = SetDestructableAnimationSpeed
    return DestructableNatives
end)
if Debug then Debug.endFile() end
