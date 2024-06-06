if Debug then Debug.beginFile "TotalControl/Warcraft3/Override/StringUtility" end
OnInit.module("TotalControl/Warcraft3/Override/StringUtility", function(require)
    local Util = require "TotalControl/Util/Util" ---@type Util
    -- ============================================================================
    --  String Utility API

    I2R = Util.Identity

    local int ---@type integer
    ---@param r number
    ---@return integer
    function R2I(r)
        int = math.modf(r)
        return int
    end

    I2S = tostring
    R2S = tostring

    local format ---@type string
    ---@param r number
    ---@param width integer
    ---@param precision integer
    ---@return string
    function R2SW(r, width, precision)
        format = "\x25" .. width .. "." .. precision .. "f"
        return string.format(format, r)
    end

    S2I = tonumber
    S2R = tonumber

    ---@param source string
    ---@param start integer
    ---@param end_ integer
    ---@return string
    function SubString(source, start, end_)
        return string.sub(source, start, end_)
    end

    ---@param s string
    ---@return integer
    function StringLength(s)
        return #s
    end

    ---@param source string
    ---@param upper boolean
    ---@return string
    function StringCase(source, upper)
        if upper then
            return string.upper(source)
        else
            return string.lower(source)
        end
    end

    -- TODO:
    -- ---@param s string
    -- ---@return integer
    -- function StringHash(s) end

    -- No appropriate overrides
    -- ---@param source string
    -- ---@return string
    -- function GetLocalizedString(source) end

    -- ---@param source string
    -- ---@return integer
    -- function GetLocalizedHotkey(source) end
end)
if Debug then Debug.endFile() end
