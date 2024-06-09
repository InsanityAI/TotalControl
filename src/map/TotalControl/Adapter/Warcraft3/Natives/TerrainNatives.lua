if Debug then Debug.beginFile "TotalControl/Adapter/Warcraft3/Natives/TerrainNatives" end
OnInit.module("TotalControl/Adapter/Warcraft3/Natives/TerrainNatives", function(require)
    ---@class TerrainNatives
    local TerrainNatives = {}
    TerrainNatives.MakeCraterDeformation = TerrainDeformCrater
    TerrainNatives.MakeRippleDeformation = TerrainDeformRipple
    TerrainNatives.MakeWaveDeformation = TerrainDeformWave
    TerrainNatives.MakeRandomDeformation = TerrainDeformRandom
    TerrainNatives.StopDeformation = TerrainDeformStop
    TerrainNatives.StopAllDeformations = TerrainDeformStopAll
    TerrainNatives.ToggleWaterDeformation = SetWaterDeforms

    TerrainNatives.GetCliffLevel = GetTerrainCliffLevel
    TerrainNatives.SetWaterColor = SetWaterBaseColor
    TerrainNatives.DrawOnTerrain = SetTerrainType
    TerrainNatives.GetTerrainTile = GetTerrainType
    TerrainNatives.GetTerrainTileVariance = GetTerrainVariance
    TerrainNatives.SetPathable = SetTerrainPathable
    TerrainNatives.IsPathable = IsTerrainPathable
    TerrainNatives.SetTerrainFog = SetTerrainFog
    TerrainNatives.SetTerrainFogEx = SetTerrainFogEx
    TerrainNatives.ResetTerrainFog = ResetTerrainFog
    TerrainNatives.SetUnitFog = SetUnitFog
    TerrainNatives.EnableOcclusion = EnableOcclusion
    TerrainNatives.ShowTerrain = BlzShowTerrain

    TerrainNatives.DrawBlight = SetBlight
    TerrainNatives.DrawBlightInRect = SetBlightRect
    TerrainNatives.DrawBlightDot = SetBlight
    TerrainNatives.DrawBlightAtLocation = SetBlight
    TerrainNatives.IsBlighted = IsPointBlighted

    return TerrainNatives
end)
if Debug then Debug.endFile() end

