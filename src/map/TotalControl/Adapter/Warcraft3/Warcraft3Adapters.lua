if Debug then Debug.beginFile "TotalControl/Adapters/Warcraft3/Warcraft3Adapters" end
OnInit.module("TotalControl/Adapters/Warcraft3/Warcraft3Adapters", function (require)
    TCAsset = require "TotalControl/Adapters/Warcraft3/Assets/Warcraft3Asset" ---@type TCAsset
    TCSound = require "TotalControl/Adapters/Warcraft3/Assets/Sound/Warcraft3Sound" ---@type TCSound
    TCSoundInstance = require "TotalControl/Adapters/Warcraft3/Assets/Sound/Warcraft3SoundInstance" ---@type TCSoundInstance
    TC3DSound = require "TotalControl/Adapters/Warcraft3/Assets/Sound/Warcraft33DSound" ---@type TC3DSound
    TC3DSoundInstance = require "TotalControl/Adapters/Warcraft3/Assets/Sound/Warcraft33DSoundInstance" ---@type TC3DSoundInstance
end)
if Debug then Debug.endFile() end