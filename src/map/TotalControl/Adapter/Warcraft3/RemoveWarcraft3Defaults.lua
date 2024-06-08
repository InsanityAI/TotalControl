if Debug then Debug.beginFile "TotalControl/Adapter/Warcraf3/RemoveWarcraft3Defaults" end
OnInit.module("TotalControl/Adapter/Warcraf3/RemoveWarcraft3Defaults", function (require)
    DestroyTimer(bj_volumeGroupsTimer)
    DestroyTimer(bj_queuedExecTimeoutTimer)
    DestroyGroup(bj_suspendDecayFleshGroup)
    DestroyGroup(bj_suspendDecayBoneGroup)
    DestroyGroup(bj_lastCreatedGroup)
    DestroyTimer(bj_lastStartedTimer)
end)
if Debug then Debug.endFile() end