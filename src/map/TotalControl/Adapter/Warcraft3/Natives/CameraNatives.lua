if Debug then Debug.beginFile "TotalControl/Adapter/Wrcraft3/Natives/CameraNatives" end
OnInit.module("TotalControl/Adapter/Wrcraft3/Natives/CameraNatives", function(require)
    ---@class CameraNatives
    local CameraNatives = {}
    CameraNatives.SetPosition = SetCameraPosition
    CameraNatives.SetQuickPosition = SetCameraQuickPosition
    CameraNatives.SetBounds = SetCameraBounds
    CameraNatives.Stop = StopCamera
    CameraNatives.ResetToGameCamera = ResetToGameCamera
    CameraNatives.PanTo = PanCameraTo
    CameraNatives.PanToTimed = PanCameraToTimed
    CameraNatives.PanToWithZ = PanCameraToWithZ
    CameraNatives.PanToTimedWithZ = PanCameraToTimedWithZ
    CameraNatives.SetCinematicCamera = SetCinematicCamera
    CameraNatives.SetRotateMode = SetCameraRotateMode
    CameraNatives.SetField = SetCameraField
    CameraNatives.GetField = GetCameraField
    CameraNatives.AdjustField = AdjustCameraField
    CameraNatives.GetMargin = GetCameraMargin
    CameraNatives.GetBoundMinX = GetCameraBoundMinX
    CameraNatives.GetBoundMaxX = GetCameraBoundMaxX
    CameraNatives.GetBoundMinY = GetCameraBoundMinY
    CameraNatives.GetBoundMaxY = GetCameraBoundMaxY
    CameraNatives.GetTargetPositionX = GetCameraTargetPositionX
    CameraNatives.GetTargetPositionY = GetCameraTargetPositionY
    CameraNatives.GetTargetPositionZ = GetCameraTargetPositionZ
    CameraNatives.GetTargetPositionLoc = GetCameraTargetPositionLoc
    CameraNatives.GetEyePositionX = GetCameraEyePositionX
    CameraNatives.GetEyePositionY = GetCameraEyePositionY
    CameraNatives.GetEyePositionZ = GetCameraEyePositionZ
    CameraNatives.GetEyePositionLoc = GetCameraEyePositionLoc
    CameraNatives.SetTargetController = SetCameraTargetController
    CameraNatives.SetOrientController = SetCameraOrientController
    CameraNatives.CreateSetup = CreateCameraSetup
    CameraNatives.SetSetupField = CameraSetupSetField
    CameraNatives.GetSetupField = CameraSetupGetField
    CameraNatives.SetDestinationPosition = CameraSetupSetDestPosition
    CameraNatives.GetDestinationPositionLoc = CameraSetupGetDestPositionLoc
    CameraNatives.GetDestinationPositionX = CameraSetupGetDestPositionX
    CameraNatives.GetDestinationPositionY = CameraSetupGetDestPositionY
    CameraNatives.ApplySetup = CameraSetupApply
    CameraNatives.ApplySetupWithZ = CameraSetupApplyWithZ
    CameraNatives.ApplySetupForceDuration = CameraSetupApplyForceDuration
    CameraNatives.ApplySetupForceDurationWithZ = CameraSetupApplyForceDurationWithZ
    CameraNatives.ApplySetupForceDurationSmooth = BlzCameraSetupApplyForceDurationSmooth
    CameraNatives.SetSetupLabel = BlzCameraSetupSetLabel
    CameraNatives.GetSetupLabel = BlzCameraSetupGetLabel
    CameraNatives.SetTargetNoise = CameraSetTargetNoise
    CameraNatives.SetSourceNoise = CameraSetSourceNoise
    CameraNatives.SetTargetNoiseEx = CameraSetTargetNoiseEx
    CameraNatives.SetSourceNoiseEx = CameraSetSourceNoiseEx
    CameraNatives.SetSmoothingFactor = CameraSetSmoothingFactor
    CameraNatives.SetFocalDistance = CameraSetFocalDistance
    CameraNatives.SetDepthOfFieldScale = CameraSetDepthOfFieldScale
    CameraNatives.SetCinematicFilterTexture = SetCineFilterTexture
    CameraNatives.SetCinematicFilterBlendMode = SetCineFilterBlendMode
    CameraNatives.SetCinematicFilterTexMapFlags = SetCineFilterTexMapFlags
    CameraNatives.SetCinematicFilterStartUV = SetCineFilterStartUV
    CameraNatives.SetCinematicFilterEndUV = SetCineFilterEndUV
    CameraNatives.SetCinematicFilterStartColor = SetCineFilterStartColor
    CameraNatives.SetCinematicFilterEndColor = SetCineFilterEndColor
    CameraNatives.SetCinematicFilterDuration = SetCineFilterDuration
    CameraNatives.DisplayCinematicFilter = DisplayCineFilter
    CameraNatives.IsCinematicFilterDisplayed = IsCineFilterDisplayed
    CameraNatives.SetCinematicScene = SetCinematicScene
    CameraNatives.EndCinematicScene = EndCinematicScene
    CameraNatives.ForceCinematicSubtitles = ForceCinematicSubtitles
    CameraNatives.SetCinematicAudio = SetCinematicAudio

    ---@enum
    CameraNatives.FIELDS = {
        TARGET_DISTANCE = CAMERA_FIELD_TARGET_DISTANCE,
        FARZ = CAMERA_FIELD_FARZ,
        ANGLE_OF_ATTACK = CAMERA_FIELD_ANGLE_OF_ATTACK,
        FIELD_OF_VIEW = CAMERA_FIELD_FIELD_OF_VIEW,
        ROLL = CAMERA_FIELD_ROLL,
        ROTATION = CAMERA_FIELD_ROTATION,
        ZOFFSET = CAMERA_FIELD_ZOFFSET,
        NEARZ = CAMERA_FIELD_NEARZ,
        LOCAL_PITCH = CAMERA_FIELD_LOCAL_PITCH,
        LOCAL_YAW = CAMERA_FIELD_LOCAL_YAW,
        LOCAL_ROLL = CAMERA_FIELD_LOCAL_ROLL
    }
    return CameraNatives
end)
if Debug then Debug.endFile() end
