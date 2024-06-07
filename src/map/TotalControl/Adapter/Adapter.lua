if Debug then Debug.beginFile "TotalControl/Adapter/Adapter" end
OnInit.main("TotalControl/Adapter/Adapter", function (require)
    -- Main module that controls which adapter to provide
    -- only one require is allowed here, depending on build for whatever game

    require "TotalControl/Adapter/Warcraft3/Warcraft3Adapters"

end)
if Debug then Debug.endFile() end