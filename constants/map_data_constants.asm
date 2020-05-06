; permissions
	const_def 1
	const TOWN
	const ROUTE
	const INDOOR
	const CAVE
	const PERM_5
	const GATE
	const DUNGEON

FOLLOWER_DISABLE_F EQU 7
FOLLOWER_DISABLE EQU (1 << FOLLOWER_DISABLE_F)

	const_def
	const PALETTE_AUTO
	const PALETTE_MORN
	const PALETTE_DAY
	const PALETTE_NITE
	const PALETTE_DARK

	const_def
	const FISHGROUP_NONE
	const FISHGROUP_SHORE
	const FISHGROUP_OCEAN
	const FISHGROUP_LAKE
	const FISHGROUP_POND
	const FISHGROUP_DRATINI
	const FISHGROUP_QWILFISH_SWARM
	const FISHGROUP_REMORAID_SWARM
	const FISHGROUP_GYARADOS
	const FISHGROUP_DRATINI_2
	const FISHGROUP_WHIRL_ISLANDS
	const FISHGROUP_QWILFISH
	const FISHGROUP_REMORAID
	const FISHGROUP_QWILFISH_NO_SWARM


	const_def
	const EAST_F
	const WEST_F
	const SOUTH_F
	const NORTH_F

	const_def
	shift_const EAST
	shift_const WEST
	shift_const SOUTH
	shift_const NORTH


; Overcast indexes
	const_def
	const NOT_OVERCAST
	const AZALEA_OVERCAST
	const LAKE_OF_RAGE_OVERCAST
	const STORMY_BEACH_OVERCAST


; see engine/spawn_points.asm:SpawnPoints
const_value = -1
	const SPAWN_N_A

	const SPAWN_HOME
	const SPAWN_DANIELS_TOWN
	const SPAWN_ASAOKA_CITY
	const SPAWN_KIKUNO_TOWN
	const SPAWN_BREGUET_RUINS
	const SPAWN_HETZELTRON
	const SPAWN_HATTORI_VILLAGE

	const SPAWN_MYSTERY_DUNGEON
NUM_SPAWNS EQU const_value

SCENE_DEFAULT  EQU 0
; Often a map will have a one-time default event for scene 0, and switch to a
; do-nothing scene 1 when the event finishes.
SCENE_FINISHED EQU 1
