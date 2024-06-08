if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/IO/Warcraft3SoundFiles" end
OnInit.module("TotalControl/Adapter/Warcraft3/IO/Warcraft3SoundFiles", function(require)
    local SoundNatives = require "TotalControl/Adapter/Warcraft3/Natives/SoundNatives" ---@type SoundNatives

    ---@class Warcraft3SoundFiles: TCSoundFiles
    local Warcraft3SoundFiles = {}
    Warcraft3SoundFiles.__index = Warcraft3SoundFiles

    function Warcraft3SoundFiles.GetDuration(filePath)
        return SoundNatives.GetFileDuration(filePath)
    end

    return Warcraft3SoundFiles
end)
if Debug then Debug.endFile() end
