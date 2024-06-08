if Debug then Debug.beginFile "TotalControl/Warcraft3/Override/Sound" end
OnInit.module("TotalControl/Warcraft3/Override/Sound", function(require)
    -- ============================================================================
    --  Sound API

    -- TODO:
    -- ---@param environmentName string
    -- function NewSoundEnvironment(environmentName) end

    ---@alias sound TCGenericSoundInstance

    local sound ---@type TCGenericSoundInstance
    ---@param fileName string
    ---@param looping boolean
    ---@param is3D boolean
    ---@param stopwhenoutofrange boolean
    ---@param fadeInRate integer
    ---@param fadeOutRate integer
    ---@param eaxSetting string
    ---@return TCGenericSoundInstance
    function CreateSound(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, eaxSetting)
        if is3D then
            sound = TC3DSound.create(fileName, looping, fadeInRate, fadeOutRate, eaxSetting):play(0, 0, 0)
        else
            sound = TCSound.create(fileName, looping, fadeInRate, fadeOutRate, eaxSetting):play()
        end
        sound:stop(true)
        return sound
    end

    -- TODO:
    -- ---@param fileName string
    -- ---@param looping boolean
    -- ---@param is3D boolean
    -- ---@param stopwhenoutofrange boolean
    -- ---@param fadeInRate integer
    -- ---@param fadeOutRate integer
    -- ---@param SLKEntryName string
    -- ---@return sound
    -- function CreateSoundFilenameWithLabel(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, SLKEntryName)
    -- end

    -- TODO:
    -- ---@param soundLabel string
    -- ---@param looping boolean
    -- ---@param is3D boolean
    -- ---@param stopwhenoutofrange boolean
    -- ---@param fadeInRate integer
    -- ---@param fadeOutRate integer
    -- ---@return sound
    -- function CreateSoundFromLabel(soundLabel, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate) end

    -- TODO:
    -- ---@param soundLabel string
    -- ---@param fadeInRate integer
    -- ---@param fadeOutRate integer
    -- ---@return sound
    -- function CreateMIDISound(soundLabel, fadeInRate, fadeOutRate) end

    -- TODO:
    -- ---@param soundHandle sound
    -- ---@param soundLabel string
    -- function SetSoundParamsFromLabel(soundHandle, soundLabel) end

    ---@param soundHandle TCGenericSoundInstance
    ---@param cutoff number
    function SetSoundDistanceCutoff(soundHandle, cutoff)
        soundHandle:setDistanceCutoff(cutoff)
    end

    ---@param soundHandle TCGenericSoundInstance
    ---@param channel integer
    function SetSoundChannel(soundHandle, channel) 
        soundHandle:setChannel(channel)
    end

    ---@param soundHandle TCGenericSoundInstance
    ---@param volume integer
    function SetSoundVolume(soundHandle, volume)
        soundHandle:setVolume(volume)
    end

    ---@param soundHandle TCGenericSoundInstance
    ---@param pitch number
    function SetSoundPitch(soundHandle, pitch) 
        soundHandle:setPitch(pitch)
    end

    --  the following method must be called immediately after calling "StartSound"
    ---@param soundHandle TCGenericSoundInstance
    ---@param millisecs integer
    function SetSoundPlayPosition(soundHandle, millisecs)
        soundHandle:seek(millisecs)
    end

    --  these calls are only valid if the sound was created with 3d enabled
    ---@param soundHandle TC3DSoundInstance
    ---@param minDist number
    ---@param maxDist number
    function SetSoundDistances(soundHandle, minDist, maxDist)
        soundHandle:setMinMaxDistances(minDist, maxDist)
    end

    ---@param soundHandle TC3DSoundInstance
    ---@param inside number
    ---@param outside number
    ---@param outsideVolume integer
    function SetSoundConeAngles(soundHandle, inside, outside, outsideVolume)
        soundHandle:setConeAngles(inside, outside)
        soundHandle:setOutsideVolume(outsideVolume)
    end

    ---@param soundHandle TC3DSoundInstance
    ---@param x number
    ---@param y number
    ---@param z number
    function SetSoundConeOrientation(soundHandle, x, y, z)
        soundHandle:setConeOrientation(x,y,z)
    end

    ---@param soundHandle TC3DSoundInstance
    ---@param x number
    ---@param y number
    ---@param z number
    function SetSoundPosition(soundHandle, x, y, z)
        soundHandle:setPosition(x,y,z)
    end

    ---@param soundHandle TC3DSoundInstance
    ---@param x number
    ---@param y number
    ---@param z number
    function SetSoundVelocity(soundHandle, x, y, z)
        soundHandle:setVelocities(x,y,z)
    end

    ---@param soundHandle TC3DSoundInstance
    ---@param whichUnit unit
    function AttachSoundToUnit(soundHandle, whichUnit)
        -- todo: UNIT API
    end

    ---@param soundHandle TCGenericSoundInstance
    function StartSound(soundHandle)
        soundHandle:seek(0)
    end

    ---@param soundHandle TCGenericSoundInstance
    ---@param fadeIn boolean
    function StartSoundEx(soundHandle, fadeIn)
        soundHandle:seek(0)
    end

    ---@param soundHandle TCGenericSoundInstance
    ---@param killWhenDone boolean
    ---@param fadeOut boolean
    function StopSound(soundHandle, killWhenDone, fadeOut)
        if (killWhenDone) then
            soundHandle:destroy()
        else
            soundHandle:stop(not fadeOut)
        end
    end

    ---@param soundHandle TCGenericSoundInstance
    function KillSoundWhenDone(soundHandle)
        soundHandle:destroy()
    end

    --  other music and sound calls
    ---@param soundHandle TCGenericSoundInstance
    ---@param duration integer
    function SetSoundDuration(soundHandle, duration)
        return soundHandle:setDuration(duration)
    end

    ---@param soundHandle TCGenericSoundInstance
    ---@return integer
    function GetSoundDuration(soundHandle)
        return soundHandle:getDuration()
    end

    ---@param musicFileName string
    ---@return integer
    function GetSoundFileDuration(musicFileName)
        return TCSoundFiles.GetDuration(musicFileName)
    end

    ---@param soundHandle TCGenericSoundInstance
    ---@return boolean
    function GetSoundIsPlaying(soundHandle)
        return soundHandle:isPlaying()
    end

    ---@param soundHandle TCGenericSoundInstance
    ---@return boolean
    function GetSoundIsLoading(soundHandle)
         -- sound loading is ultra fast, doubt we even need this anymore and asset is requested to preload just before creating the sound
        return false
    end

    ---@param vgroup volumegroup
    ---@param scale number
    function VolumeGroupSetVolume(vgroup, scale) end

    function VolumeGroupReset() end


    ---@param soundHandle sound
    ---@param byPosition boolean
    ---@param rectwidth number
    ---@param rectheight number
    function RegisterStackedSound(soundHandle, byPosition, rectwidth, rectheight) end

    ---@param soundHandle sound
    ---@param byPosition boolean
    ---@param rectwidth number
    ---@param rectheight number
    function UnregisterStackedSound(soundHandle, byPosition, rectwidth, rectheight) end

    ---@param soundHandle sound
    ---@param animationLabel string
    ---@return boolean
    function SetSoundFacialAnimationLabel(soundHandle, animationLabel) end

    ---@param soundHandle sound
    ---@param groupLabel string
    ---@return boolean
    function SetSoundFacialAnimationGroupLabel(soundHandle, groupLabel) end

    ---@param soundHandle sound
    ---@param animationSetFilepath string
    ---@return boolean
    function SetSoundFacialAnimationSetFilepath(soundHandle, animationSetFilepath) end

    -- Subtitle support that is attached to the soundHandle rather than as disperate data with the legacy UI
    ---@param soundHandle sound
    ---@param speakerName string
    ---@return boolean
    function SetDialogueSpeakerNameKey(soundHandle, speakerName) end

    ---@param soundHandle sound
    ---@return string
    function GetDialogueSpeakerNameKey(soundHandle) end

    ---@param soundHandle sound
    ---@param dialogueText string
    ---@return boolean
    function SetDialogueTextKey(soundHandle, dialogueText) end

    ---@param soundHandle sound
    ---@return string
    function GetDialogueTextKey(soundHandle) end
end)
if Debug then Debug.endFile() end
