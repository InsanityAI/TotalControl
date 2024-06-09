if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/DialogNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/DialogNatives", function (require)
    ---@class DialogNatives
    local DialogNatives = {}
    DialogNatives.Create = DialogCreate
    DialogNatives.Destroy = DialogDestroy
    DialogNatives.Clear = DialogClear
    DialogNatives.SetMessage = DialogSetMessage
    DialogNatives.AddButton = DialogAddButton
    DialogNatives.AddQuitButton = DialogAddQuitButton
    DialogNatives.Show = DialogDisplay
    return DialogNatives
end)
if Debug then Debug.endFile() end
