---@class TCPlayer
---@field GetLocalPlayer fun(): TCPlayer
---@field GetPlayer fun(id: unknown): TCPlayer
---@field getName fun(self: TCPlayer): string
---@field isPlaying fun(self: TCPlayer): boolean
---@field isObserver fun(self: TCPlayer): boolean
---@field isLocalPlayer fun(self: TCPlayer): boolean
---@field hasLeft fun(self: TCPlayer): boolean
---@field exists fun(self: TCPlayer): boolean
---@field exit fun(self:TCPlayer, victory: boolean)
---@field instantExit fun(self: TCPlayer)
---@field getPlayerCamera fun(self: TCPlayer): TCPlayerCamera
---@field bindToCamera fun(self: TCPlayer, camera: TCCamera?)
---@field unbindCamera fun(self: TCPlayer)

RACE_PREF_HUMAN = ConvertRacePref(1)	---@type racepreference
RACE_PREF_ORC = ConvertRacePref(2)	---@type racepreference
RACE_PREF_NIGHTELF = ConvertRacePref(4)	---@type racepreference
RACE_PREF_UNDEAD = ConvertRacePref(8)	---@type racepreference
RACE_PREF_DEMON = ConvertRacePref(16)	---@type racepreference
RACE_PREF_RANDOM = ConvertRacePref(32)	---@type racepreference
RACE_PREF_USER_SELECTABLE = ConvertRacePref(64)	---@type racepreference

MAP_CONTROL_USER = ConvertMapControl(0)	---@type mapcontrol
MAP_CONTROL_COMPUTER = ConvertMapControl(1)	---@type mapcontrol
MAP_CONTROL_RESCUABLE = ConvertMapControl(2)	---@type mapcontrol
MAP_CONTROL_NEUTRAL = ConvertMapControl(3)	---@type mapcontrol
MAP_CONTROL_CREEP = ConvertMapControl(4)	---@type mapcontrol
MAP_CONTROL_NONE = ConvertMapControl(5)	---@type mapcontrol

PLAYER_STATE_GAME_RESULT = ConvertPlayerState(0)	---@type playerstate
--  current resource levels
PLAYER_STATE_RESOURCE_GOLD = ConvertPlayerState(1)	---@type playerstate
PLAYER_STATE_RESOURCE_LUMBER = ConvertPlayerState(2)	---@type playerstate
PLAYER_STATE_RESOURCE_HERO_TOKENS = ConvertPlayerState(3)	---@type playerstate
PLAYER_STATE_RESOURCE_FOOD_CAP = ConvertPlayerState(4)	---@type playerstate
PLAYER_STATE_RESOURCE_FOOD_USED = ConvertPlayerState(5)	---@type playerstate
PLAYER_STATE_FOOD_CAP_CEILING = ConvertPlayerState(6)	---@type playerstate
PLAYER_STATE_GIVES_BOUNTY = ConvertPlayerState(7)	---@type playerstate
PLAYER_STATE_ALLIED_VICTORY = ConvertPlayerState(8)	---@type playerstate
PLAYER_STATE_PLACED = ConvertPlayerState(9)	---@type playerstate
PLAYER_STATE_OBSERVER_ON_DEATH = ConvertPlayerState(10)	---@type playerstate
PLAYER_STATE_OBSERVER = ConvertPlayerState(11)	---@type playerstate
PLAYER_STATE_UNFOLLOWABLE = ConvertPlayerState(12)	---@type playerstate
--  taxation rate for each resource
PLAYER_STATE_GOLD_UPKEEP_RATE = ConvertPlayerState(13)	---@type playerstate
PLAYER_STATE_LUMBER_UPKEEP_RATE = ConvertPlayerState(14)	---@type playerstate
--  cumulative resources collected by the player during the mission
PLAYER_STATE_GOLD_GATHERED = ConvertPlayerState(15)	---@type playerstate
PLAYER_STATE_LUMBER_GATHERED = ConvertPlayerState(16)	---@type playerstate
PLAYER_STATE_NO_CREEP_SLEEP = ConvertPlayerState(25)	---@type playerstate

---@param whichPlayer player
---@param otherPlayer player
---@return boolean
function IsPlayerAlly(whichPlayer, otherPlayer) end	-- (native)

---@param whichPlayer player
---@param otherPlayer player
---@return boolean
function IsPlayerEnemy(whichPlayer, otherPlayer) end	-- (native)

---@param whichPlayer player
---@param whichForce force
---@return boolean
function IsPlayerInForce(whichPlayer, whichForce) end	-- (native)

---@param x number
---@param y number
---@param whichPlayer player
---@return boolean
function IsVisibleToPlayer(x, y, whichPlayer) end	-- (native)

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function IsLocationVisibleToPlayer(whichLocation, whichPlayer) end	-- (native)

---@param x number
---@param y number
---@param whichPlayer player
---@return boolean
function IsFoggedToPlayer(x, y, whichPlayer) end	-- (native)

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function IsLocationFoggedToPlayer(whichLocation, whichPlayer) end	-- (native)

---@param x number
---@param y number
---@param whichPlayer player
---@return boolean
function IsMaskedToPlayer(x, y, whichPlayer) end	-- (native)

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function IsLocationMaskedToPlayer(whichLocation, whichPlayer) end	-- (native)

---@param whichPlayer player
---@return race
function GetPlayerRace(whichPlayer) end	-- (native)

---@param whichPlayer player
---@return integer
function GetPlayerId(whichPlayer) end	-- (native)

---@param whichPlayer player
---@param includeIncomplete boolean
---@return integer
function GetPlayerUnitCount(whichPlayer, includeIncomplete) end	-- (native)

---@param whichPlayer player
---@param unitName string
---@param includeIncomplete boolean
---@param includeUpgrades boolean
---@return integer
function GetPlayerTypedUnitCount(whichPlayer, unitName, includeIncomplete, includeUpgrades) end	-- (native)

---@param whichPlayer player
---@param includeIncomplete boolean
---@return integer
function GetPlayerStructureCount(whichPlayer, includeIncomplete) end	-- (native)

---@param whichPlayer player
---@param whichPlayerState playerstate
---@return integer
function GetPlayerState(whichPlayer, whichPlayerState) end	-- (native)

---@param whichPlayer player
---@param whichPlayerScore playerscore
---@return integer
function GetPlayerScore(whichPlayer, whichPlayerScore) end	-- (native)

---@param sourcePlayer player
---@param otherPlayer player
---@param whichAllianceSetting alliancetype
---@return boolean
function GetPlayerAlliance(sourcePlayer, otherPlayer, whichAllianceSetting) end	-- (native)

---@param whichPlayer player
---@return number
function GetPlayerHandicap(whichPlayer) end	-- (native)

---@param whichPlayer player
---@return number
function GetPlayerHandicapXP(whichPlayer) end	-- (native)

---@param whichPlayer player
---@return number
function GetPlayerHandicapReviveTime(whichPlayer) end	-- (native)

---@param whichPlayer player
---@return number
function GetPlayerHandicapDamage(whichPlayer) end	-- (native)

---@param whichPlayer player
---@param handicap number
function SetPlayerHandicap(whichPlayer, handicap) end	-- (native)

---@param whichPlayer player
---@param handicap number
function SetPlayerHandicapXP(whichPlayer, handicap) end	-- (native)

---@param whichPlayer player
---@param handicap number
function SetPlayerHandicapReviveTime(whichPlayer, handicap) end	-- (native)

---@param whichPlayer player
---@param handicap number
function SetPlayerHandicapDamage(whichPlayer, handicap) end	-- (native)

---@param whichPlayer player
---@param techid integer
---@param maximum integer
function SetPlayerTechMaxAllowed(whichPlayer, techid, maximum) end	-- (native)

---@param whichPlayer player
---@param techid integer
---@return integer
function GetPlayerTechMaxAllowed(whichPlayer, techid) end	-- (native)

---@param whichPlayer player
---@param techid integer
---@param levels integer
function AddPlayerTechResearched(whichPlayer, techid, levels) end	-- (native)

---@param whichPlayer player
---@param techid integer
---@param setToLevel integer
function SetPlayerTechResearched(whichPlayer, techid, setToLevel) end	-- (native)

---@param whichPlayer player
---@param techid integer
---@param specificonly boolean
---@return boolean
function GetPlayerTechResearched(whichPlayer, techid, specificonly) end	-- (native)

---@param whichPlayer player
---@param techid integer
---@param specificonly boolean
---@return integer
function GetPlayerTechCount(whichPlayer, techid, specificonly) end	-- (native)

---@param whichPlayer player
---@param newOwner integer
function SetPlayerUnitsOwner(whichPlayer, newOwner) end	-- (native)

---@param whichPlayer player
---@param toWhichPlayers force
---@param flag boolean
function CripplePlayer(whichPlayer, toWhichPlayers, flag) end	-- (native)

---@param whichPlayer player
---@param abilid integer
---@param avail boolean
function SetPlayerAbilityAvailable(whichPlayer, abilid, avail) end	-- (native)

---@param whichPlayer player
---@param whichPlayerState playerstate
---@param value integer
function SetPlayerState(whichPlayer, whichPlayerState, value) end	-- (native)

---@param whichPlayer player
---@param gameResult playergameresult
function RemovePlayer(whichPlayer, gameResult) end	-- (native)

--  Used to store hero level data for the scorescreen
--  before units are moved to neutral passive in melee games

---@param whichPlayer player
function CachePlayerHeroData(whichPlayer) end	-- (native)

---@param whichPlayer player
---@param whichTeam integer
function SetPlayerTeam(whichPlayer, whichTeam) end	-- (native)

---@param whichPlayer player
---@param startLocIndex integer
function SetPlayerStartLocation(whichPlayer, startLocIndex) end	-- (native)

--  forces player to have the specified start loc and marks the start loc as occupied
--  which removes it from consideration for subsequently placed players
--  ( i.e. you can use this to put people in a fixed loc and then
--    use random placement for any unplaced players etc )
---@param whichPlayer player
---@param startLocIndex integer
function ForcePlayerStartLocation(whichPlayer, startLocIndex) end	-- (native)

---@param whichPlayer player
---@param color playercolor
function SetPlayerColor(whichPlayer, color) end	-- (native)

---@param sourcePlayer player
---@param otherPlayer player
---@param whichAllianceSetting alliancetype
---@param value boolean
function SetPlayerAlliance(sourcePlayer, otherPlayer, whichAllianceSetting, value) end	-- (native)

---@param sourcePlayer player
---@param otherPlayer player
---@param whichResource playerstate
---@param rate integer
function SetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource, rate) end	-- (native)

---@param whichPlayer player
---@param whichRacePreference racepreference
function SetPlayerRacePreference(whichPlayer, whichRacePreference) end	-- (native)

---@param whichPlayer player
---@param value boolean
function SetPlayerRaceSelectable(whichPlayer, value) end	-- (native)

---@param whichPlayer player
---@param controlType mapcontrol
function SetPlayerController(whichPlayer, controlType) end	-- (native)

---@param whichPlayer player
---@param name string
function SetPlayerName(whichPlayer, name) end	-- (native)

---@param whichPlayer player
---@param flag boolean
function SetPlayerOnScoreScreen(whichPlayer, flag) end	-- (native)

---@param whichPlayer player
---@return integer
function GetPlayerTeam(whichPlayer) end	-- (native)

---@param whichPlayer player
---@return integer
function GetPlayerStartLocation(whichPlayer) end	-- (native)

---@param whichPlayer player
---@return playercolor
function GetPlayerColor(whichPlayer) end	-- (native)

---@param whichPlayer player
---@return boolean
function GetPlayerSelectable(whichPlayer) end	-- (native)

---@param whichPlayer player
---@return mapcontrol
function GetPlayerController(whichPlayer) end	-- (native)

---@param whichPlayer player
---@return playerslotstate
function GetPlayerSlotState(whichPlayer) end	-- (native)

---@param sourcePlayer player
---@param otherPlayer player
---@param whichResource playerstate
---@return integer
function GetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource) end	-- (native)

---@param whichPlayer player
---@param pref racepreference
---@return boolean
function IsPlayerRacePrefSet(whichPlayer, pref) end	-- (native)
