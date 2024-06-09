if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/MultiboardNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/MultiboardNatives", function(require)
    ---@class MultiboardNatives
    local MultiboardNatives = {}
    MultiboardNatives.Create = CreateMultiboard
    MultiboardNatives.Destroy = DestroyMultiboard
    MultiboardNatives.Clear = MultiboardClear
    MultiboardNatives.Show = MultiboardDisplay
    MultiboardNatives.HideAll = MultiboardSuppressDisplay
    MultiboardNatives.IsVisible = IsMultiboardDisplayed
    MultiboardNatives.Minimize = MultiboardMinimize
    MultiboardNatives.IsMinimized = IsMultiboardMinimized
    MultiboardNatives.SetTitle = MultiboardSetTitleText
    MultiboardNatives.GetTitle = MultiboardGetTitleText
    MultiboardNatives.SetTitleColor = MultiboardSetTitleTextColor
    MultiboardNatives.SetRowCount = MultiboardSetRowCount
    MultiboardNatives.GetRowCount = MultiboardGetRowCount
    MultiboardNatives.SetColumnCount = MultiboardSetColumnCount
    MultiboardNatives.GetColumnCount = MultiboardGetColumnCount
    MultiboardNatives.SetCellsStyle = MultiboardSetItemsStyle
    MultiboardNatives.SetCellsValue = MultiboardSetItemsValue
    MultiboardNatives.SetCellsValueColor = MultiboardSetItemsValueColor
    MultiboardNatives.SetCellsWidth = MultiboardSetItemsWidth
    MultiboardNatives.SetCellsIcon = MultiboardSetItemsIcon

    MultiboardNatives.GetCell = MultiboardGetItem
    MultiboardNatives.DestroyCell = MultiboardReleaseItem
    MultiboardNatives.SetCellStyle = MultiboardSetItemStyle
    MultiboardNatives.SetCellValue = MultiboardSetItemValue
    MultiboardNatives.SetCellValueColor = MultiboardSetItemValueColor
    MultiboardNatives.SetCellWidth = MultiboardSetItemWidth
    MultiboardNatives.SetCellIcon = MultiboardSetItemIcon

    return MultiboardNatives
end)
if Debug then Debug.endFile() end
