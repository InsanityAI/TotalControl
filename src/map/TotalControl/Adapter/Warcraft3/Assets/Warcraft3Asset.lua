if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Assets/Warcraft3Asset" end
OnInit.module("TotalControl/Adapter/Warcraft3/Assets/Warcraft3Asset", function(require)

    local preloadedStuff = {} ---@type table<string, boolean>

    ---@class Warcraft3Asset: TCAsset
    ---@field loaded boolean
    Warcraft3Asset = {}
    Warcraft3Asset.__index = Warcraft3Asset

    ---@param filePath string
    function Warcraft3Asset.create(filePath)
        return setmetatable({
            filePath = filePath,
            loaded = preloadedStuff[filePath] or false
        }, Warcraft3Asset)
    end

    function Warcraft3Asset:load()
        if not self.loaded then
            if not preloadedStuff[self.filePath] then
                Preload(self.filePath)
                preloadedStuff[self.filePath] = true
            end
            self.loaded = true
        end
    end

    return Warcraft3Asset
end)
if Debug then Debug.endFile() end
