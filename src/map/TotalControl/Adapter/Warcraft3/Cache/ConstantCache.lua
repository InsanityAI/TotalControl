if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Cache/ConstantCache" end
OnInit.module("TotalControl/Adapter/Warcraft3/Cache/ConstantCache", function (require)
    require "Cache"
    require "Hook"

    ---@alias ConstantCache fun(nativeGroup: table<string, function>, functionName: string): Cache
    ---@type ConstantCache
    local function ConstantCache(nativeGroup, functionName)
        local cache = Cache.create(nativeGroup[functionName], 1)
        Hook.add(functionName, function(arg)
            return cache:get(arg)
        end, nil, nativeGroup)
        return cache
    end

    return ConstantCache
end)
if Debug then Debug.endFile() end