if Debug then Debug.beginFile "TotalControl/Warcraft3/Override/Math" end
OnInit.module("TotalControl/Warcraft3/Override/Math", function(require)
    require "TotalControl/Util/MathUtils"
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
    end

    MathRound = math.round
end)
if Debug then Debug.endFile() end
