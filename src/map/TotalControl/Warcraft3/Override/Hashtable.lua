if Debug then Debug.beginFile "TotalControl/Warcraft3/Override/Hashtable" end
OnInit.module("TotalControl/Warcraft3/Override/Hashtable", function(require)
    local MDTable = require "MDTable" ---@type MDTable

    ---@enum HashtablePrimaryStorableTypes
    local TYPES = {
        BOOLEAN = 'bool',
        INTEGER = 'int',
        REAL = 'real',
        STRING = 'string',
        HANDLE = 'handle'
    }

    ---@alias hashtable MDTable

    ---@param h handle
    ---@return unknown
    GetHandleId = function(h) return h end

    ---@return MDTable
    function InitMDTable()
        return MDTable.create(3)
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param value integer
    function SaveInteger(table, parentKey, childKey, value)
        table[TYPES.INTEGER][parentKey][childKey] = value
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param value number
    function SaveReal(table, parentKey, childKey, value)
        table[TYPES.REAL][parentKey][childKey] = value
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param value boolean
    function SaveBoolean(table, parentKey, childKey, value)
        table[TYPES.BOOLEAN][parentKey][childKey] = value
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param value string
    ---@return boolean
    function SaveStr(table, parentKey, childKey, value)
        table[TYPES.STRING][parentKey][childKey] = value
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichPlayer player
    ---@return boolean
    function SavePlayerHandle(table, parentKey, childKey, whichPlayer)
        table[TYPES.HANDLE][parentKey][childKey] = whichPlayer
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichWidget widget
    ---@return boolean
    function SaveWidgetHandle(table, parentKey, childKey, whichWidget)
        table[TYPES.HANDLE][parentKey][childKey] = whichWidget
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichDestructable destructable
    ---@return boolean
    function SaveDestructableHandle(table, parentKey, childKey, whichDestructable)
        table[TYPES.HANDLE][parentKey][childKey] = whichDestructable
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichItem item
    ---@return boolean
    function SaveItemHandle(table, parentKey, childKey, whichItem)
        table[TYPES.HANDLE][parentKey][childKey] = whichItem
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichUnit unit
    ---@return boolean
    function SaveUnitHandle(table, parentKey, childKey, whichUnit)
        table[TYPES.HANDLE][parentKey][childKey] = whichUnit
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichAbility ability
    ---@return boolean
    function SaveAbilityHandle(table, parentKey, childKey, whichAbility)
        table[TYPES.HANDLE][parentKey][childKey] = whichAbility
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichTimer timer
    ---@return boolean
    function SaveTimerHandle(table, parentKey, childKey, whichTimer)
        table[TYPES.HANDLE][parentKey][childKey] = whichTimer
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichTrigger trigger
    ---@return boolean
    function SaveTriggerHandle(table, parentKey, childKey, whichTrigger)
        table[TYPES.HANDLE][parentKey][childKey] = whichTrigger
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichTriggercondition triggercondition
    ---@return boolean
    function SaveTriggerConditionHandle(table, parentKey, childKey, whichTriggercondition)
        table[TYPES.HANDLE][parentKey][childKey] = whichTriggercondition
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichTriggeraction triggeraction
    ---@return boolean
    function SaveTriggerActionHandle(table, parentKey, childKey, whichTriggeraction)
        table[TYPES.HANDLE][parentKey][childKey] = whichTriggeraction
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichEvent event
    ---@return boolean
    function SaveTriggerEventHandle(table, parentKey, childKey, whichEvent)
        table[TYPES.HANDLE][parentKey][childKey] = whichEvent
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichForce force
    ---@return boolean
    function SaveForceHandle(table, parentKey, childKey, whichForce)
        table[TYPES.HANDLE][parentKey][childKey] = whichForce
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichGroup group
    ---@return boolean
    function SaveGroupHandle(table, parentKey, childKey, whichGroup)
        table[TYPES.HANDLE][parentKey][childKey] = whichGroup
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichLocation location
    ---@return boolean
    function SaveLocationHandle(table, parentKey, childKey, whichLocation)
        table[TYPES.HANDLE][parentKey][childKey] = whichLocation
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichRect rect
    ---@return boolean
    function SaveRectHandle(table, parentKey, childKey, whichRect)
        table[TYPES.HANDLE][parentKey][childKey] = whichRect
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichBoolexpr? boolexpr
    ---@return boolean
    function SaveBooleanExprHandle(table, parentKey, childKey, whichBoolexpr)
        table[TYPES.HANDLE][parentKey][childKey] = whichBoolexpr
        return true
    end

    ---@param table table
    ---@param parentKey any
    ---@param childKey any
    ---@param whichSound TCSoundInstance | TC3DSoundInstance
    ---@return boolean
    SaveSoundHandle = function(table, parentKey, childKey, whichSound)
        table[TYPES.HANDLE][parentKey][childKey] = whichSound
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichEffect effect
    ---@return boolean
    function SaveEffectHandle(table, parentKey, childKey, whichEffect)
        table[TYPES.HANDLE][parentKey][childKey] = whichEffect
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichUnitpool unitpool
    ---@return boolean
    function SaveUnitPoolHandle(table, parentKey, childKey, whichUnitpool)
        table[TYPES.HANDLE][parentKey][childKey] = whichUnitpool
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichItempool itempool
    ---@return boolean
    function SaveItemPoolHandle(table, parentKey, childKey, whichItempool)
        table[TYPES.HANDLE][parentKey][childKey] = whichItempool
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichQuest quest
    ---@return boolean
    function SaveQuestHandle(table, parentKey, childKey, whichQuest)
        table[TYPES.HANDLE][parentKey][childKey] = whichQuest
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichQuestitem questitem
    ---@return boolean
    function SaveQuestItemHandle(table, parentKey, childKey, whichQuestitem)
        table[TYPES.HANDLE][parentKey][childKey] = whichQuestitem
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichDefeatcondition defeatcondition
    ---@return boolean
    function SaveDefeatConditionHandle(table, parentKey, childKey, whichDefeatcondition)
        table[TYPES.HANDLE][parentKey][childKey] = whichDefeatcondition
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichTimerdialog timerdialog
    ---@return boolean
    function SaveTimerDialogHandle(table, parentKey, childKey, whichTimerdialog)
        table[TYPES.HANDLE][parentKey][childKey] = whichTimerdialog
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichLeaderboard leaderboard
    ---@return boolean
    function SaveLeaderboardHandle(table, parentKey, childKey, whichLeaderboard)
        table[TYPES.HANDLE][parentKey][childKey] = whichLeaderboard
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichMultiboard multiboard
    ---@return boolean
    function SaveMultiboardHandle(table, parentKey, childKey, whichMultiboard)
        table[TYPES.HANDLE][parentKey][childKey] = whichMultiboard
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichMultiboarditem multiboarditem
    ---@return boolean
    function SaveMultiboardItemHandle(table, parentKey, childKey, whichMultiboarditem)
        table[TYPES.HANDLE][parentKey][childKey] = whichMultiboarditem
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichTrackable trackable
    ---@return boolean
    function SaveTrackableHandle(table, parentKey, childKey, whichTrackable)
        table[TYPES.HANDLE][parentKey][childKey] = whichTrackable
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichDialog dialog
    ---@return boolean
    function SaveDialogHandle(table, parentKey, childKey, whichDialog)
        table[TYPES.HANDLE][parentKey][childKey] = whichDialog
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichButton button
    ---@return boolean
    function SaveButtonHandle(table, parentKey, childKey, whichButton)
        table[TYPES.HANDLE][parentKey][childKey] = whichButton
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichTexttag texttag
    ---@return boolean
    function SaveTextTagHandle(table, parentKey, childKey, whichTexttag)
        table[TYPES.HANDLE][parentKey][childKey] = whichTexttag
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichLightning lightning
    ---@return boolean
    function SaveLightningHandle(table, parentKey, childKey, whichLightning)
        table[TYPES.HANDLE][parentKey][childKey] = whichLightning
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichImage image
    ---@return boolean
    function SaveImageHandle(table, parentKey, childKey, whichImage)
        table[TYPES.HANDLE][parentKey][childKey] = whichImage
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichUbersplat ubersplat
    ---@return boolean
    function SaveUbersplatHandle(table, parentKey, childKey, whichUbersplat)
        table[TYPES.HANDLE][parentKey][childKey] = whichUbersplat
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichRegion region
    ---@return boolean
    function SaveRegionHandle(table, parentKey, childKey, whichRegion)
        table[TYPES.HANDLE][parentKey][childKey] = whichRegion
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichFogState fogstate
    ---@return boolean
    function SaveFogStateHandle(table, parentKey, childKey, whichFogState)
        table[TYPES.HANDLE][parentKey][childKey] = whichFogState
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichFogModifier fogmodifier
    ---@return boolean
    function SaveFogModifierHandle(table, parentKey, childKey, whichFogModifier)
        table[TYPES.HANDLE][parentKey][childKey] = whichFogModifier
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichAgent agent
    ---@return boolean
    function SaveAgentHandle(table, parentKey, childKey, whichAgent)
        table[TYPES.HANDLE][parentKey][childKey] = whichAgent
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichMDTable MDTable
    ---@return boolean
    function SaveMDTableHandle(table, parentKey, childKey, whichMDTable)
        table[TYPES.HANDLE][parentKey][childKey] = whichMDTable
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@param whichFrameHandle framehandle
    ---@return boolean
    function SaveFrameHandle(table, parentKey, childKey, whichFrameHandle)
        table[TYPES.HANDLE][parentKey][childKey] = whichFrameHandle
        return true
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return integer
    function LoadInteger(table, parentKey, childKey)
        return table[TYPES.INTEGER][parentKey][childKey]
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return number
    function LoadReal(table, parentKey, childKey)
        return table[TYPES.REAL][parentKey][childKey]
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return boolean
    function LoadBoolean(table, parentKey, childKey)
        return table[TYPES.BOOLEAN][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return string
    function LoadStr(table, parentKey, childKey)
        return table[TYPES.STRING][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return player
    function LoadPlayerHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return widget
    function LoadWidgetHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return destructable
    function LoadDestructableHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return item
    function LoadItemHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return unit
    function LoadUnitHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return ability
    function LoadAbilityHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return timer
    function LoadTimerHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return trigger
    function LoadTriggerHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return triggercondition
    function LoadTriggerConditionHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return triggeraction
    function LoadTriggerActionHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return event
    function LoadTriggerEventHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return force
    function LoadForceHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return group
    function LoadGroupHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return location
    function LoadLocationHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return rect
    function LoadRectHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return boolexpr
    function LoadBooleanExprHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return TCSoundInstance | TC3DSoundInstance
    function LoadSoundHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return effect
    function LoadEffectHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return unitpool
    function LoadUnitPoolHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return itempool
    function LoadItemPoolHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return quest
    function LoadQuestHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return questitem
    function LoadQuestItemHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return defeatcondition
    function LoadDefeatConditionHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return timerdialog
    function LoadTimerDialogHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return leaderboard
    function LoadLeaderboardHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return multiboard
    function LoadMultiboardHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return multiboarditem
    function LoadMultiboardItemHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return trackable
    function LoadTrackableHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return dialog
    function LoadDialogHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return button
    function LoadButtonHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return texttag
    function LoadTextTagHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return lightning
    function LoadLightningHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return image
    function LoadImageHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return ubersplat
    function LoadUbersplatHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return region
    function LoadRegionHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return fogstate
    function LoadFogStateHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return fogmodifier
    function LoadFogModifierHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return MDTable
    function LoadMDTableHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return framehandle
    function LoadFrameHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey]
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return boolean
    function HaveSavedInteger(table, parentKey, childKey)
        return table[TYPES.INTEGER][parentKey][childKey] ~= nil
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return boolean
    function HaveSavedReal(table, parentKey, childKey)
        return table[TYPES.REAL][parentKey][childKey] ~= nil
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return boolean
    function HaveSavedBoolean(table, parentKey, childKey)
        return table[TYPES.BOOLEAN][parentKey][childKey] ~= nil
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return boolean
    function HaveSavedString(table, parentKey, childKey)
        return table[TYPES.STRING][parentKey][childKey] ~= nil
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    ---@return boolean
    function HaveSavedHandle(table, parentKey, childKey)
        return table[TYPES.HANDLE][parentKey][childKey] ~= nil
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    function RemoveSavedInteger(table, parentKey, childKey)
        table[TYPES.INTEGER][parentKey][childKey] = nil
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    function RemoveSavedReal(table, parentKey, childKey)
        table[TYPES.REAL][parentKey][childKey] = nil
     end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    function RemoveSavedBoolean(table, parentKey, childKey) 
        table[TYPES.BOOLEAN][parentKey][childKey] = nil
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    function RemoveSavedString(table, parentKey, childKey) 
        table[TYPES.STRING][parentKey][childKey] = nil
    end

    ---@param table MDTable
    ---@param parentKey any
    ---@param childKey any
    function RemoveSavedHandle(table, parentKey, childKey) 
        table[TYPES.HANDLE][parentKey][childKey] = nil
    end

    ---@param table MDTable
    function FlushParentMDTable(table)
        for dataType in pairs(TYPES) do
            table[dataType] = nil
        end
    end

    ---@param table MDTable
    ---@param parentKey any
    function FlushChildMDTable(table, parentKey)
        for dataType in pairs(TYPES) do
            table[dataType][parentKey] = nil
        end
    end
end)
if Debug then Debug.endFile() end
