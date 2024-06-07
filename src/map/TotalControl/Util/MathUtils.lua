if Debug then Debug.beginFile "TotalControl/Util/MathUtils" end
OnInit.module("TotalControl/Util/MathUtils", function (require)
    ---@class MathUtils
    local MathUtils = {}

    ---@param percentile percentile
    ---@return integer
    function MathUtils.PercentileTo128(percentile)
        return 1.27 * percentile
    end

    --[[
        from https://stackoverflow.com/a/65552089 credits to Jonathan Cohler
    ]]
    function bits() return 1 << 32 == 0 and 32 or 1 << 64 == 0 and 64 end

    --[[
        From https://stackoverflow.com/a/58411671 credits to Pedro Gimeno
    ]]
    local ofs = 2 ^ (bits() == 64 and 52 or 23)

    local int ---@type integer
    ---@param num number
    ---@return integer
    math.round = function(num)
        if math.abs(num) > ofs then
            int = math.modf(num)
        else
            int = math.modf(num < 0 and num - ofs + ofs or num + ofs - ofs)
        end
        return int
    end

    math.sign = function(number)
        return (number > 0 and 1) or (number == 0 and 0) or -1
    end

    return MathUtils
end)
if Debug then Debug.endFile() end