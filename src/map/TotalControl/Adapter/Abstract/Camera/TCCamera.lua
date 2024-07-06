---@class TCCamera: TCPlayerCamera
---@field create fun(): TCCamera

-- ============================================================================
--  Camera API

--needs demo showcase/preview to understand what those are

CAMERA_FIELD_TARGET_DISTANCE = ConvertCameraField(0) ---@type camerafield -- distance from camera to target, (ZOFFSET divided by cos of attack of angle) causes change in ZOFFSET field
CAMERA_FIELD_FARZ = ConvertCameraField(1) ---@type camerafield -- rendering distance
CAMERA_FIELD_ANGLE_OF_ATTACK = ConvertCameraField(2) ---@type camerafield -- (uses degrees) 0° is completely horizontal angle, 90° is under units, -90° is above units (bird's eye view), game's default is -56°
CAMERA_FIELD_FIELD_OF_VIEW = ConvertCameraField(3) ---@type camerafield -- well, idk how to explain this, how much peripheral view can camera fit in it's view? definitively not distance from focal point. Default is 70
CAMERA_FIELD_ROLL = ConvertCameraField(4) ---@type camerafield -- another camera rotation, this one is always 0° by default, this one is used to mimic "camera falling down" world goes counter-clockwise, camera goes clockwise for positive angle, also uses degrees
CAMERA_FIELD_ROTATION = ConvertCameraField(5) ---@type camerafield -- normal camera rotation
CAMERA_FIELD_ZOFFSET = ConvertCameraField(6) ---@type camerafield -- sets the camera's height from terrain, this also causes changes on TARGET_DISTANCE field
CAMERA_FIELD_NEARZ = ConvertCameraField(7) ---@type camerafield -- rendering cutoff distance from camera (doesn't render stuff that is too close)
CAMERA_FIELD_LOCAL_PITCH = ConvertCameraField(8) ---@type camerafield -- by default 0°, offsets the camera ANGLE_OF_ATTACK field, affects the final view, but doesn't change these fields, potentially also modifies the camera's rotations, instead of target rotation
CAMERA_FIELD_LOCAL_YAW = ConvertCameraField(9) ---@type camerafield -- by default 0°, offsets the camera ROTATION field, affects the final view, but doesn't change these fields, potentially also modifies the camera's rotations, instead of target rotation
CAMERA_FIELD_LOCAL_ROLL = ConvertCameraField(10) ---@type camerafield -- by default 0°, offsets the camera ROLL field, affects the final view, but doesn't change these fields, potentially also modifies the camera's rotations, instead of target rotation

-- while camera panning and rotation is happening, user cannot move camera around...
-- after camera rotate mode is finished, the camera is still locked... :thinking:
-- using SetCameraField however, doesn't lock the camera.
-- SetCameraRotateMode can be used to lock camera, but does it reset other fields?
 -- continues from CAMERA_FIELD_ROTATION value
 -- Stopping camera and trying to use SetCameraField on rotation doesn't work...
-- so far only ResetToGameCamera works on unlocking, but it resets all camera values to default camera values.
-- player's scroll-zoom resets all field values to default...
-- player's scroll-zoom also cannot be disabled without doing some hacks..., ew.

BLEND_MODE_NONE = ConvertBlendMode(0)	---@type blendmode
BLEND_MODE_DONT_CARE = ConvertBlendMode(0)	---@type blendmode
BLEND_MODE_KEYALPHA = ConvertBlendMode(1)	---@type blendmode
BLEND_MODE_BLEND = ConvertBlendMode(2)	---@type blendmode
BLEND_MODE_ADDITIVE = ConvertBlendMode(3)	---@type blendmode
BLEND_MODE_MODULATE = ConvertBlendMode(4)	---@type blendmode
BLEND_MODE_MODULATE_2X = ConvertBlendMode(5)	---@type blendmode

TEXMAP_FLAG_NONE = ConvertTexMapFlags(0)	---@type texmapflags
TEXMAP_FLAG_WRAP_U = ConvertTexMapFlags(1)	---@type texmapflags
TEXMAP_FLAG_WRAP_V = ConvertTexMapFlags(2)	---@type texmapflags
TEXMAP_FLAG_WRAP_UV = ConvertTexMapFlags(3)	---@type texmapflags

RARITY_FREQUENT = ConvertRarityControl(0)	---@type raritycontrol
RARITY_RARE = ConvertRarityControl(1)	---@type raritycontrol
FOG_OF_WAR_MASKED = ConvertFogState(1)	---@type fogstate
FOG_OF_WAR_FOGGED = ConvertFogState(2)	---@type fogstate
FOG_OF_WAR_VISIBLE = ConvertFogState(4)	---@type fogstate

-- cannot be used, keeps adding more and more positions without a way to remove them
---@param x number
---@param y number
function SetCameraQuickPosition(x, y) end	-- (native)


--- minimap/camera panning boundaries
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param x4 number
---@param y4 number
function SetCameraBounds(x1, y1, x2, y2, x3, y3, x4, y4) end	-- (native)

-- hmm, stops whatever camera movement is happening
function StopCamera() end	-- (native)

---@param duration number
function ResetToGameCamera(duration) end	-- (native)


---@param cameraModelFile string
function SetCinematicCamera(cameraModelFile) end	-- (native)

---@param x number
---@param y number
---@param radiansToSweep number
---@param duration number
function SetCameraRotateMode(x, y, radiansToSweep, duration) end	-- (native)

---@param whichField camerafield
---@param value number
---@param duration number
function SetCameraField(whichField, value, duration) end	-- (native)

---@param whichField camerafield
---@param offset number
---@param duration number
function AdjustCameraField(whichField, offset, duration) end	-- (native)

---@param whichUnit unit
---@param xoffset number
---@param yoffset number
---@param inheritOrientation boolean
function SetCameraTargetController(whichUnit, xoffset, yoffset, inheritOrientation) end	-- (native)

---@param whichUnit unit
---@param xoffset number
---@param yoffset number
function SetCameraOrientController(whichUnit, xoffset, yoffset) end	-- (native)

---@return camerasetup
function CreateCameraSetup() end	-- (native)

---@param whichSetup camerasetup
---@param whichField camerafield
---@param value number
---@param duration number
function CameraSetupSetField(whichSetup, whichField, value, duration) end	-- (native)

---@param whichSetup camerasetup
---@param whichField camerafield
---@return number
function CameraSetupGetField(whichSetup, whichField) end	-- (native)

---@param whichSetup camerasetup
---@param x number
---@param y number
---@param duration number
function CameraSetupSetDestPosition(whichSetup, x, y, duration) end	-- (native)

---@param whichSetup camerasetup
---@return location
function CameraSetupGetDestPositionLoc(whichSetup) end	-- (native)

---@param whichSetup camerasetup
---@return number
function CameraSetupGetDestPositionX(whichSetup) end	-- (native)

---@param whichSetup camerasetup
---@return number
function CameraSetupGetDestPositionY(whichSetup) end	-- (native)

---@param whichSetup camerasetup
---@param doPan boolean
---@param panTimed boolean
function CameraSetupApply(whichSetup, doPan, panTimed) end	-- (native)

---@param whichSetup camerasetup
---@param zDestOffset number
function CameraSetupApplyWithZ(whichSetup, zDestOffset) end	-- (native)

---@param whichSetup camerasetup
---@param doPan boolean
---@param forceDuration number
function CameraSetupApplyForceDuration(whichSetup, doPan, forceDuration) end	-- (native)

---@param whichSetup camerasetup
---@param zDestOffset number
---@param forceDuration number
function CameraSetupApplyForceDurationWithZ(whichSetup, zDestOffset, forceDuration) end	-- (native)

---@param whichSetup camerasetup
---@param label string
function BlzCameraSetupSetLabel(whichSetup, label) end	-- (native)

---@param whichSetup camerasetup
---@return string
function BlzCameraSetupGetLabel(whichSetup) end	-- (native)

-- world shaking
---@param mag number
---@param velocity number
function CameraSetTargetNoise(mag, velocity) end	-- (native)


-- camera shaking
---@param mag number
---@param velocity number
function CameraSetSourceNoise(mag, velocity) end	-- (native)

---@param mag number
---@param velocity number
---@param vertOnly boolean
function CameraSetTargetNoiseEx(mag, velocity, vertOnly) end	-- (native)

---@param mag number
---@param velocity number
---@param vertOnly boolean
function CameraSetSourceNoiseEx(mag, velocity, vertOnly) end	-- (native)

-- according to Hive PurgeAndFire: It makes scrolling more smooth, via scrolling with the arrow keys or using the mouse. -- But I don't see it.
---@param factor number
function CameraSetSmoothingFactor(factor) end	-- (native)

---@param distance number -- reforged only it seems
function CameraSetFocalDistance(distance) end	-- (native)

---@param scale number -- reforged only it seems
function CameraSetDepthOfFieldScale(scale) end	-- (native)

---@param filename string
function SetCineFilterTexture(filename) end	-- (native)

---@param whichMode blendmode
function SetCineFilterBlendMode(whichMode) end	-- (native)

---@param whichFlags texmapflags
function SetCineFilterTexMapFlags(whichFlags) end	-- (native)

---@param minu number
---@param minv number
---@param maxu number
---@param maxv number
function SetCineFilterStartUV(minu, minv, maxu, maxv) end	-- (native)

---@param minu number
---@param minv number
---@param maxu number
---@param maxv number
function SetCineFilterEndUV(minu, minv, maxu, maxv) end	-- (native)

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetCineFilterStartColor(red, green, blue, alpha) end	-- (native)

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetCineFilterEndColor(red, green, blue, alpha) end	-- (native)

---@param duration number
function SetCineFilterDuration(duration) end	-- (native)

---@param flag boolean
function DisplayCineFilter(flag) end	-- (native)

---@return boolean
function IsCineFilterDisplayed() end	-- (native)

---@param portraitUnitId integer
---@param color playercolor
---@param speakerTitle string
---@param text string
---@param sceneDuration number
---@param voiceoverDuration number
function SetCinematicScene(portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration) end	-- (native)

function EndCinematicScene() end	-- (native)

---@param flag boolean
function ForceCinematicSubtitles(flag) end	-- (native)

---@param cinematicAudio boolean
function SetCinematicAudio(cinematicAudio) end	-- (native)

---@param whichMargin integer
---@return number
function GetCameraMargin(whichMargin) end	-- (native)

--  These return values for the local players camera only...
---@return number
function GetCameraBoundMinX() end	-- (native)

---@return number
function GetCameraBoundMinY() end	-- (native)

---@return number
function GetCameraBoundMaxX() end	-- (native)

---@return number
function GetCameraBoundMaxY() end	-- (native)

---@param whichField camerafield
---@return number
function GetCameraField(whichField) end	-- (native)

---@return number
function GetCameraTargetPositionX() end	-- (native)

---@return number
function GetCameraTargetPositionY() end	-- (native)

---@return number
function GetCameraTargetPositionZ() end	-- (native)

---@return location
function GetCameraTargetPositionLoc() end	-- (native)

---@return number
function GetCameraEyePositionX() end	-- (native)

---@return number
function GetCameraEyePositionY() end	-- (native)

---@return number
function GetCameraEyePositionZ() end	-- (native)

---@return location
function GetCameraEyePositionLoc() end	-- (native)


---@param x number
---@param y number
function SetCameraQuickPosition(x, y) end     -- (native)

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param x4 number
---@param y4 number
function SetCameraBounds(x1, y1, x2, y2, x3, y3, x4, y4) end     -- (native)

---@param duration number
function ResetToGameCamera(duration) end     -- (native)

---@param cameraModelFile string
function SetCinematicCamera(cameraModelFile) end     -- (native)

---@param x number
---@param y number
---@param radiansToSweep number
---@param duration number
function SetCameraRotateMode(x, y, radiansToSweep, duration) end     -- (native)

---@param whichField camerafield
---@param value number
---@param duration number
function SetCameraField(whichField, value, duration) end     -- (native)

---@param whichField camerafield
---@param offset number
---@param duration number
function AdjustCameraField(whichField, offset, duration) end     -- (native)

---@return camerasetup
function CreateCameraSetup() end     -- (native)

---@param whichSetup camerasetup
---@param whichField camerafield
---@param value number
---@param duration number
function CameraSetupSetField(whichSetup, whichField, value, duration) end     -- (native)

---@param whichSetup camerasetup
---@param whichField camerafield
---@return number
function CameraSetupGetField(whichSetup, whichField) end     -- (native)



---@param whichSetup camerasetup
---@param label string
function BlzCameraSetupSetLabel(whichSetup, label) end     -- (native)

---@param whichSetup camerasetup
---@return string
function BlzCameraSetupGetLabel(whichSetup) end     -- (native)

---@param mag number
---@param velocity number
---@param vertOnly boolean
function CameraSetTargetNoiseEx(mag, velocity, vertOnly) end     -- (native)

---@param mag number
---@param velocity number
---@param vertOnly boolean
function CameraSetSourceNoiseEx(mag, velocity, vertOnly) end     -- (native)



---@param portraitUnitId integer
---@param color playercolor
---@param speakerTitle string
---@param text string
---@param sceneDuration number
---@param voiceoverDuration number
function SetCinematicScene(portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration) end -- (native)

function EndCinematicScene() end                                                                            -- (native)

---@param flag boolean
function ForceCinematicSubtitles(flag) end -- (native)

---@param cinematicAudio boolean
function SetCinematicAudio(cinematicAudio) end -- (native)

---@param whichMargin integer
---@return number
function GetCameraMargin(whichMargin) end -- (native)

--  These return values for the local players camera only...
---@return number
function GetCameraBoundMinX() end -- (native)

---@return number
function GetCameraBoundMinY() end -- (native)

---@return number
function GetCameraBoundMaxX() end -- (native)

---@return number
function GetCameraBoundMaxY() end -- (native)

---@param whichField camerafield
---@return number
function GetCameraField(whichField) end -- (native)

---@return number
function GetCameraTargetPositionX() end -- (native)

---@return number
function GetCameraTargetPositionY() end -- (native)

---@return number
function GetCameraTargetPositionZ() end -- (native)

---@return location
function GetCameraTargetPositionLoc() end -- (native)

---@return number
function GetCameraEyePositionX() end -- (native)

---@return number
function GetCameraEyePositionY() end -- (native)

---@return number
function GetCameraEyePositionZ() end -- (native)

---@return location
function GetCameraEyePositionLoc() end -- (native)
