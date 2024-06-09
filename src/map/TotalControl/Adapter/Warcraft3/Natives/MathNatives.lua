if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/MathNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/MathNatives", function(require)
    ---@class MathNatives
    local MathNatives = { Bitwise = {} }
    MathNatives.Deg2Rad = Deg2Rad
    MathNatives.Rad2Deg = Rad2Deg
    MathNatives.Sin = Sin
    MathNatives.Cos = Cos
    MathNatives.Tan = Tan
    MathNatives.Asin = Asin
    MathNatives.Acos = Acos
    MathNatives.Atan = Atan
    MathNatives.Atan2 = Atan2
    MathNatives.SquareRoot = SquareRoot
    MathNatives.Pow = Pow
    MathNatives.Round = MathRound
    MathNatives.ColorComponentsToFinalColorValue = BlzConvertColor
    MathNatives.Bitwise.Or = BlzBitOr
    MathNatives.Bitwise.And = BlzBitAnd
    MathNatives.Bitwise.Xor = BlzBitXor
    return MathNatives
end)
if Debug then Debug.endFile() end
