if Debug then Debug.beginFile "TotalControl/Util/MathUtils" end
OnInit.module("TotalControl/Util/MathUtils", function (require)
    ---@class MathUtils
    local MathUtils = {}

    ---@param percentile percentile
    ---@return integer
    function MathUtils.PercentileTo128(percentile)
        return 1.27 * percentile
    end
end)
if Debug then Debug.endFile() end