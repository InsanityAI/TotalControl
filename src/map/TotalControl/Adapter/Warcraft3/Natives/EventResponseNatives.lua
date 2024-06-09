if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/EventResponseNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/EventResponseNatives", function (require)
    ---@class EventResponseNatives
    local EventResponseNatives = {}
    EventResponseNatives.GetFilterUnit = GetFilterUnit
    EventResponseNatives.GetEnumUnit = GetEnumUnit
    EventResponseNatives.GetFilterDestructable = GetFilterDestructable
    EventResponseNatives.GetEnumDestructable = GetEnumDestructable
    EventResponseNatives.GetFilterItem = GetFilterItem
    EventResponseNatives.GetEnumItem = GetEnumItem
    EventResponseNatives.GetFilterPlayer = GetFilterPlayer
    EventResponseNatives.GetEnumPlayer = GetEnumPlayer

    EventResponseNatives.GetThreadTimer = GetExpiredTimer
    EventResponseNatives.GetThreadTrigger = GetTriggeringTrigger
    EventResponseNatives.GetTriggeredEvent = GetTriggerEventId
    EventResponseNatives.GetTriggeringGameState = GetEventGameState
    EventResponseNatives.GetTriggeringRegion = GetTriggeringRegion
    EventResponseNatives.GetTriggeringTrackable = GetTriggeringTrackable
    EventResponseNatives.GetTriggeringDialog = GetClickedDialog
    EventResponseNatives.GetTriggeringDialogButton = GetClickedButton

    EventResponseNatives.GetTriggeringPlayer = GetTriggerPlayer
    EventResponseNatives.GetWinningPlayer = GetWinningPlayer
    EventResponseNatives.GetTriggeringPlayerState = GetEventPlayerState
    EventResponseNatives.GetTriggeringPlayerChatString = GetEventPlayerChatString
    EventResponseNatives.GetTriggeringMatchedPlayerChatString = GetEventPlayerChatStringMatched

    EventResponseNatives.GetTriggeringUnit = GetTriggerUnit
    EventResponseNatives.GetEnteringUnit = GetEnteringUnit
    EventResponseNatives.GetLeavingUnit = GetLeavingUnit
    EventResponseNatives.GetChangingUnit = GetChangingUnit
    EventResponseNatives.GetChangingUnitPreviousOwner = GetChangingUnitPrevOwner
    EventResponseNatives.GetManipulatingUnit = GetManipulatingUnit
    EventResponseNatives.GetManipulatedItem = GetManipulatedItem
    EventResponseNatives.GetResearchingUnit = GetResearchingUnit
    EventResponseNatives.GetTriggeringResearch = GetResearched
    EventResponseNatives.GetTriggeringTargetUnit = GetEventTargetUnit
    EventResponseNatives.GetTriggeringUnitState = GetEventUnitState

    EventResponseNatives.GetOrderedUnit = GetOrderedUnit
    EventResponseNatives.GetIssuedOrderId = GetIssuedOrderId
    EventResponseNatives.GetOrderPointX = GetOrderPointX
    EventResponseNatives.GetOrderPointY = GetOrderPointY
    EventResponseNatives.GetOrderLocation = GetOrderPointLoc
    EventResponseNatives.GetOrderTarget = GetOrderTarget
    EventResponseNatives.GetOrderTargetDestructable = GetOrderTargetDestructable
    EventResponseNatives.GetOrderTargetItem = GetOrderTargetItem
    EventResponseNatives.GetOrderTargetUnit = GetOrderTargetUnit

    EventResponseNatives.GetTriggeringAbilityId = GetSpellAbilityId
    EventResponseNatives.GetTriggeringAbility = GetSpellAbility
    EventResponseNatives.GetCasterUnit = GetSpellAbilityUnit
    EventResponseNatives.GetSpellTargetX = GetSpellTargetX
    EventResponseNatives.GetSpellTargetY = GetSpellTargetY
    EventResponseNatives.GetSpellTargetLocation = GetSpellTargetLoc
    EventResponseNatives.GetSpellTargetDestructable = GetSpellTargetDestructable
    EventResponseNatives.GetSpellTargetItem = GetSpellTargetItem
    EventResponseNatives.GetSpellTargetUnit = GetSpellTargetUnit

    -- events where 2 units were interacting have been renamed in order to strongly imply the units' relationship, 
    -- instead of -ing form which can be ambiguous in some cases.
    EventResponseNatives.GetAttackerUnit = GetAttacker
    EventResponseNatives.GetRescuerUnit = GetRescuer
    EventResponseNatives.GetDeadUnit = GetDyingUnit
    EventResponseNatives.GetKillerUnit = GetKillingUnit
    EventResponseNatives.GetDecayedUnit = GetDecayingUnit
    EventResponseNatives.GetTrainedUnit = GetTrainedUnit
    EventResponseNatives.GetTrainedUnitType = GetTrainedUnitType
    EventResponseNatives.GetDetectedUnit = GetDetectedUnit
    EventResponseNatives.GetDetectedPlayer = GetEventDetectingPlayer -- why does this exist on UNIT events, not even PLAYER_UNIT
    EventResponseNatives.GetSummonerUnit = GetSummoningUnit
    EventResponseNatives.GetSummonedUnit = GetSummonedUnit
    EventResponseNatives.GetLoaderUnit = GetTransportUnit
    EventResponseNatives.GetLoadedUnit = GetLoadedUnit
    EventResponseNatives.GetSellerUnit = GetSellingUnit
    EventResponseNatives.GetSoldUnit = GetSoldUnit
    EventResponseNatives.GetBuyerUnit = GetBuyingUnit
    EventResponseNatives.GetDamagedUnit = BlzGetEventDamageTarget
    EventResponseNatives.GetDamagerUnit = GetEventDamageSource
    EventResponseNatives.SetEventDamage = BlzSetEventDamage
    EventResponseNatives.GetEventDamage = GetEventDamage
    EventResponseNatives.SetEventAttackType = BlzSetEventAttackType
    EventResponseNatives.GetEventAttackType = BlzGetEventAttackType
    EventResponseNatives.SetEventDamageType = BlzSetEventDamageType
    EventResponseNatives.GetEventDamageType = BlzGetEventDamageType
    EventResponseNatives.SetEventWeaponType = BlzSetEventWeaponType
    EventResponseNatives.GetEventWeaponType = BlzGetEventWeaponType
    EventResponseNatives.GetEventIsFromAttack = BlzGetEventIsAttack

    -- these obviously apply only to hero-units, and as such, there is no need to refer them as units.
    EventResponseNatives.GetLevelingHero = GetLevelingUnit
    EventResponseNatives.GetLearningHero = GetLearningUnit
    EventResponseNatives.GetLearnedAbility = GetLearnedSkill
    EventResponseNatives.GetLearnedAbilityLevel = GetLearnedSkillLevel
    EventResponseNatives.GetDissipatedHero = GetRevivableUnit
    EventResponseNatives.GetRevivingHero = GetRevivingUnit

    EventResponseNatives.GetConstructingStructure = GetConstructingStructure
    EventResponseNatives.GetCancelledStructure = GetCancelledStructure
    EventResponseNatives.GetConstructingStructure = GetConstructedStructure

    EventResponseNatives.GetSoldItem = GetSoldItem
    EventResponseNatives.GetStackAbsorberItem = BlzGetAbsorbingItem
    EventResponseNatives.WasManipulatedItemAbsorbed = BlzGetManipulatedItemWasAbsorbed
    EventResponseNatives.GetStackingSourceItem = BlzGetStackingItemSource
    EventResponseNatives.GetStackingTargetItem = BlzGetStackingItemTarget
    EventResponseNatives.GetStackingTargetItemPreviousCharge = BlzGetStackingItemTargetPreviousCharges

    EventResponseNatives.GetTriggeringWidget = GetTriggerWidget

    EventResponseNatives.GetTriggeringDestructable = GetTriggerDestructable

    EventResponseNatives.GetSaveFilename = GetSaveBasicFilename
    EventResponseNatives.GetTournamentFinishSoonTimeRemaining = GetTournamentFinishSoonTimeRemaining
    EventResponseNatives.GetTournamentFinishNowRule = GetTournamentFinishNowRule
    EventResponseNatives.GetTournamentFinishNowPlayer = GetTournamentFinishNowPlayer

    EventResponseNatives.GetTriggeringPlayerMouseX = BlzGetTriggerPlayerMouseX
    EventResponseNatives.GetTriggeringPlayerMouseY = BlzGetTriggerPlayerMouseY
    EventResponseNatives.GetTriggeringPlayerMouseLocation = BlzGetTriggerPlayerMousePosition
    EventResponseNatives.GetTriggeringMouseButton = BlzGetTriggerPlayerMouseButton
    EventResponseNatives.GetTriggeringMouseFocusedUnit = BlzGetMouseFocusUnit

    EventResponseNatives.GetTriggeringFrame = BlzGetTriggerFrame
    EventResponseNatives.GetTriggeredFrameEvent = BlzGetTriggerFrameEvent
    EventResponseNatives.GetTriggeringFrameValue = BlzGetTriggerFrameValue
    EventResponseNatives.GetTriggeringFrameText = BlzGetTriggerFrameText

    EventResponseNatives.GetTriggeringKeyboardKey = BlzGetTriggerPlayerKey
    EventResponseNatives.GetTriggeringKeyboardMetaKey = BlzGetTriggerPlayerMetaKey
    EventResponseNatives.GetTriggeringKeyboardIsKeyDown = BlzGetTriggerPlayerIsKeyDown

    EventResponseNatives.GetTriggeredSyncPrefix = BlzGetTriggerSyncPrefix
    EventResponseNatives.GetTriggeredSyncData = BlzGetTriggerSyncData

    return EventResponseNatives
end)
if Debug then Debug.endFile() end
