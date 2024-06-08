if Debug then Debug.beginFile "TotalControl/Util/Util" end
OnInit.module("TotalControl/Util/Util", function (require)
    ---@class Util
    local Util = {}

    ---@param ... unknown
    ---@return ...
    function Util.Identity(...)
        return ...
    end

    function Util.NoOp()
    end

    return Util
end)
if Debug then Debug.endFile() end