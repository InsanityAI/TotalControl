if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/QuestNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/QuestNatives", function(require)
    ---@class QuestNatives
    local QuestNatives = {}
    QuestNatives.Create = CreateQuest
    QuestNatives.Destroy = DestroyQuest
    QuestNatives.SetTitle = QuestSetTitle
    QuestNatives.SetDescription = QuestSetDescription
    QuestNatives.SetIconPath = QuestSetIconPath
    QuestNatives.SetRequired = QuestSetRequired
    QuestNatives.IsRequired = IsQuestRequired
    QuestNatives.SetCompleted = QuestSetCompleted
    QuestNatives.IsCompleted = IsQuestCompleted
    QuestNatives.SetDiscovered = QuestSetDiscovered
    QuestNatives.IsDiscovered = IsQuestDiscovered
    QuestNatives.SetFailed = QuestSetFailed
    QuestNatives.IsFailed = IsQuestFailed
    QuestNatives.SetEnabled = QuestSetEnabled
    QuestNatives.IsEnabled = IsQuestEnabled

    QuestNatives.CreateItem = QuestCreateItem
    QuestNatives.SetItemDescription = QuestItemSetDescription
    QuestNatives.SetItemCompleted = QuestItemSetCompleted
    QuestNatives.IsItemCompleted = IsQuestItemCompleted

    QuestNatives.FlashQuestButtonDialog = FlashQuestDialogButton
    QuestNatives.ForceQuestDialogUpdate = ForceQuestDialogUpdate

    QuestNatives.CreateDefeatCondition = CreateDefeatCondition
    QuestNatives.DestroyDefeatCondition = DestroyDefeatCondition
    QuestNatives.SetDefeatConditionDescription = DefeatConditionSetDescription

    return QuestNatives
end)
if Debug then Debug.endFile() end
