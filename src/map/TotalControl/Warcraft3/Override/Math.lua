if Debug then Debug.beginFile "TotalControl/Warcraft3/Override/Math" end
OnInit.module("TotalControl/Warcraft3/Override/Math", function(require)
    -- ============================================================================
    --  MathAPI

    Deg2Rad = math.rad
    Rad2Deg = math.deg
    Sin = math.sin
    Cos = math.cos
    Tan = math.tan
    Asin = math.asin
    Acos = math.acos
    Atan = math.atan
    Atan2 = math.atan
    SquareRoot = math.sqrt

    ---@param x number
    ---@param power number
    ---@return number
    function Pow(x, power)
        return x ^ power
    end -- (native)

    --[[
        from https://stackoverflow.com/a/65552089 Credits Jonathan Cohler
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

    MathRound = math.round
end)
if Debug then Debug.endFile() end
