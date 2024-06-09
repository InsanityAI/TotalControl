if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/ItemNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/ItemNatives", function(require)
    ---@class ItemNatives
    local ItemNatives = { Ability = {}, Type = {}, PropertyField = {} }
    ItemNatives.Create = CreateItem
    ItemNatives.CreateWithSkin = BlzCreateItemWithSkin
    ItemNatives.Destroy = RemoveItem
    ItemNatives.SetOwningPlayer = SetItemPlayer -- Capture the flag shenanigans?
    ItemNatives.GetOwningPlayer = GetItemPlayer -- Capture the flag shenanigans?
    ItemNatives.GetTypeId = GetItemTypeId
    ItemNatives.GetClass = GetItemType
    ItemNatives.GetX = GetItemX
    ItemNatives.GetY = GetItemY
    ItemNatives.SetPosition = SetItemPosition
    ItemNatives.SetDropOnDeath = SetItemDropOnDeath
    ItemNatives.SetDroppable = SetItemDroppable
    ItemNatives.SetPawnable = SetItemPawnable
    ItemNatives.IsPawnable = IsItemPawnable
    ItemNatives.SetInvulnerable = SetItemInvulnerable
    ItemNatives.IsInvulnerable = IsItemInvulnerable
    ItemNatives.SetVisible = SetItemVisible
    ItemNatives.IsVisible = IsItemVisible
    ItemNatives.IsOwned = IsItemOwned
    ItemNatives.IsPowerup = IsItemPowerup
    ItemNatives.IsSellable = IsItemSellable
    ItemNatives.GetLevel = GetItemLevel
    ItemNatives.SetName = BlzSetItemName
    ItemNatives.GetName = GetItemName
    ItemNatives.SetDescription = BlzSetItemDescription
    ItemNatives.GetDescription = BlzGetItemDescription
    ItemNatives.SetTooltip = BlzSetItemTooltip
    ItemNatives.GetTooltip = BlzGetItemTooltip
    ItemNatives.SetExtendedTooltip = BlzSetItemExtendedTooltip
    ItemNatives.GetExtendedTooltip = BlzGetItemExtendedTooltip
    ItemNatives.GetStacks = GetItemCharges
    ItemNatives.SetStacks = SetItemCharges
    ItemNatives.SetCustomValue = SetItemUserData
    ItemNatives.GetCustomValue = GetItemUserData
    ItemNatives.SetDropID = SetItemDropID -- what is this? Item spawns a unit or something??
    ItemNatives.SetSkin = BlzSetItemSkin
    ItemNatives.GetSkin = BlzGetItemSkin
    ItemNatives.SetIcon = BlzSetItemIconPath
    ItemNatives.GetIcon = BlzGetItemIconPath

    ItemNatives.Ability.GetFromList = BlzGetItemAbilityByIndex
    ItemNatives.Ability.GetById = BlzGetItemAbility
    ItemNatives.Ability.AddById = BlzItemAddAbility
    ItemNatives.Ability.RemoveById = BlzItemRemoveAbility

    ItemNatives.Type.IsPawnable = IsItemIdPawnable

    ItemNatives.PropertyField.SetBoolean = BlzSetItemBooleanField
    ItemNatives.PropertyField.GetBoolean = BlzGetItemBooleanField
    ItemNatives.PropertyField.SetInteger = BlzSetItemIntegerField
    ItemNatives.PropertyField.GetInteger = BlzGetItemIntegerField
    ItemNatives.PropertyField.SetReal = BlzSetItemRealField
    ItemNatives.PropertyField.GetReal = BlzGetItemRealField
    ItemNatives.PropertyField.SetString = BlzSetItemStringField
    ItemNatives.PropertyField.GetString = BlzGetItemStringField
    return ItemNatives
end)
if Debug then Debug.endFile() end
