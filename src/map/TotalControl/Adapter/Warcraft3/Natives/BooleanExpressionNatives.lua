if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/BooleanExpressionNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/BooleanExpressionNatives", function(require)
    ---@class BooleanExpressionNatives
    local BooleanExpressionNatives = {}
    BooleanExpressionNatives.CreateFilter = Filter
    BooleanExpressionNatives.DestroyFilter = DestroyFilter
    BooleanExpressionNatives.CreateCondition = Condition
    BooleanExpressionNatives.DestroyCondition = DestroyCondition
    BooleanExpressionNatives.Destroy = DestroyBoolExpr
    BooleanExpressionNatives.And = And
    BooleanExpressionNatives.Or = Or
    BooleanExpressionNatives.Not = Not
    return BooleanExpressionNatives
end)
if Debug then Debug.endFile() end
