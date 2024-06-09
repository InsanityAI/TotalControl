if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/LeaderboardNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/LeaderboardNatives", function(require)
    ---@class LeaderboardNatives
    local LeaderboardNatives = {}
    LeaderboardNatives.Create = CreateLeaderboard
    LeaderboardNatives.Destroy = DestroyLeaderboard
    LeaderboardNatives.Clear = LeaderboardClear
    LeaderboardNatives.Show = LeaderboardDisplay
    LeaderboardNatives.ShowToPlayer = PlayerSetLeaderboard
    LeaderboardNatives.GetCurrentlyShown = PlayerGetLeaderboard
    LeaderboardNatives.IsVisible = IsLeaderboardDisplayed
    LeaderboardNatives.SetLabel = LeaderboardSetLabel
    LeaderboardNatives.GetLabel = LeaderboardGetLabelText
    LeaderboardNatives.SetLabelColor = LeaderboardSetLabelColor
    LeaderboardNatives.SetValueColor = LeaderboardSetValueColor
    LeaderboardNatives.SetStyle = LeaderboardSetStyle
    LeaderboardNatives.GetRowCount = LeaderboardGetItemCount
    LeaderboardNatives.SetRowCount = LeaderboardSetSizeByItemCount
    LeaderboardNatives.SortByValue = LeaderboardSortItemsByValue
    LeaderboardNatives.SortByPlayer = LeaderboardSortItemsByPlayer
    LeaderboardNatives.SortByLabel = LeaderboardSortItemsByLabel

    LeaderboardNatives.AddRow = LeaderboardAddItem
    LeaderboardNatives.RemoveRow = LeaderboardRemoveItem
    LeaderboardNatives.RemoveRowByPlayer = LeaderboardRemovePlayerItem
    LeaderboardNatives.PlayerHasRow = LeaderboardHasPlayerItem
    LeaderboardNatives.GetPlayerRowIndex = LeaderboardGetPlayerIndex
    LeaderboardNatives.SetRowStyle = LeaderboardSetItemStyle
    LeaderboardNatives.SetRowValue = LeaderboardSetItemValue
    LeaderboardNatives.SetRowLabel = LeaderboardSetItemLabel
    LeaderboardNatives.SetRowLabelColor = LeaderboardSetItemLabelColor
    LeaderboardNatives.SetRowValueColor = LeaderboardSetItemValueColor

    return LeaderboardNatives
end)
if Debug then Debug.endFile() end
