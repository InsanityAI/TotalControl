if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/FrameNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/FrameNatives", function(require)
    ---@class FrameNatives
    local FrameNatives = {}
    FrameNatives.LoadTOCFile = BlzLoadTOCFile
    FrameNatives.GetOrigin = BlzGetOriginFrame
    FrameNatives.HideOrigin = BlzHideOriginFrames
    FrameNatives.SetGlobalAutoPosition = BlzEnableUIAutoPosition
    FrameNatives.Create = BlzCreateFrame
    FrameNatives.CreateSimple = BlzCreateSimpleFrame
    FrameNatives.CreateByType = BlzCreateFrameByType
    FrameNatives.Destroy = BlzDestroyFrame
    FrameNatives.SetPointRelative = BlzFrameSetPoint
    FrameNatives.SetPointAbsolute = BlzFrameSetAbsPoint
    FrameNatives.ClearAllPoints = BlzFrameClearAllPoints
    FrameNatives.SetAllPoints = BlzFrameSetAllPoints
    FrameNatives.Display = BlzFrameSetVisible
    FrameNatives.IsVisible = BlzFrameIsVisible
    FrameNatives.GetName = BlzFrameGetName
    FrameNatives.GetByName = BlzGetFrameByName
    FrameNatives.Click = BlzFrameClick
    FrameNatives.SetText = BlzFrameSetText
    FrameNatives.GetText = BlzFrameGetText
    FrameNatives.AddText = BlzFrameAddText
    FrameNatives.SetTextSize = BlzFrameSetTextSizeLimit
    FrameNatives.GetTextSize = BlzFrameGetTextSizeLimit
    FrameNatives.SetTextColor = BlzFrameSetTextColor
    FrameNatives.SetModel = BlzFrameSetModel
    FrameNatives.Focus = BlzFrameSetFocus
    FrameNatives.Enable = BlzFrameSetEnable
    FrameNatives.IsEnabled = BlzFrameGetEnable
    FrameNatives.SetAlpha = BlzFrameSetAlpha
    FrameNatives.GetAlpha = BlzFrameGetAlpha
    FrameNatives.SetSpriteAnimation = BlzFrameSetSpriteAnimate
    FrameNatives.SetTexture = BlzFrameSetTexture
    FrameNatives.SetScale = BlzFrameSetScale
    FrameNatives.SetTooltip = BlzFrameSetTooltip
    FrameNatives.CageMouse = BlzFrameCageMouse
    FrameNatives.SetValue = BlzFrameSetValue
    FrameNatives.GetValue = BlzFrameGetValue
    FrameNatives.SetMinMaxValues = BlzFrameSetMinMaxValue
    FrameNatives.SetStepSize = BlzFrameSetStepSize
    FrameNatives.SetSize = BlzFrameSetSize
    FrameNatives.SetVertexColor = BlzFrameSetVertexColor
    FrameNatives.SetLevel = BlzFrameSetLevel
    FrameNatives.SetParent = BlzFrameSetParent
    FrameNatives.GetParent = BlzFrameGetParent
    FrameNatives.GetHeight = BlzFrameGetHeight
    FrameNatives.GetWidth = BlzFrameGetWidth
    FrameNatives.SetFont = BlzFrameSetFont
    FrameNatives.SetTextAlignment = BlzFrameSetTextAlignment
    FrameNatives.CountChildren = BlzFrameGetChildrenCount
    FrameNatives.GetChildAt = BlzFrameGetChild
    return FrameNatives
end)
if Debug then Debug.endFile() end
