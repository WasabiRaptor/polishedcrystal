INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves
INCLUDE "data/pokemon/evolution_moves.asm"

INCLUDE "data/pokemon/evos_attacks_pointers.asm"
INCLUDE "data/pokemon/variant_evos_attacks_pointers.asm"

EvosAttacks::

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_ITEM, SHINY_STONE, SYLVEON
	db EVOLVE_LOCATION, ILEX_FOREST, LEAFEON
	db EVOLVE_LOCATION, ICE_PATH, GLACEON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 10, SWIFT
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, HEAL_BELL ; Refresh → HGSS tutor move
	db 23, THIEF ; Covet → TM move
	db 25, TAKE_DOWN
	db 29, CHARM
	db 33, BATON_PASS
	db 37, DOUBLE_EDGE
	db 41, GROWTH ; Last Resort → event move
	db 45, REVERSAL ; Trump Card → new move
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, WATER_GUN ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, WATER_PULSE
	db 20, AURORA_BEAM
	db 25, RECOVER ; Aqua Ring → similar move
	db 29, BARRIER ; Acid Armor → similar move
	db 33, HAZE
	db 37, SCALD ; Muddy Water → TM move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, THUNDERSHOCK ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, DOUBLE_KICK
	db 20, LIGHT_SCREEN ; Thunder Fang → TM move
	db 25, PIN_MISSILE
	db 29, AGILITY
	db 33, THUNDER_WAVE
	db 37, THUNDERBOLT ; Discharge → TM move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, EMBER ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, FLAME_WHEEL ; Fire Fang → new move
	db 25, FIRE_SPIN
	db 29, SCARY_FACE
	db 33, SMOKESCREEN ; Smog → new move
	db 37, FLAMETHROWER ; Lava Plume → new move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, FLARE_BLITZ
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, CONFUSION ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, PSYBEAM
	db 25, FUTURE_SIGHT
	db 29, REFLECT ; Psych Up → event move
	db 33, HEALINGLIGHT ; Morning Sun → similar move
	db 37, PSYCHIC_M
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, POWER_GEM ; Power Swap → new move
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, PURSUIT ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, CONFUSE_RAY
	db 20, FEINT_ATTACK
	db 25, TOXIC ; Assurance → TM move
	db 29, SCREECH
	db 33, HEALINGLIGHT ; Moonlight → similar move
	db 37, SUCKER_PUNCH ; Mean Look → tutor move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, MEAN_LOOK ; Guard Swap → Mean Look
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, RAZOR_LEAF ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, BITE ; Grass Whistle → new move
	db 20, ENERGY_BALL ; Magical Leaf → TM move
	db 25, GIGA_DRAIN
	db 29, SWORDS_DANCE
	db 33, HEALINGLIGHT ; Synthesis → similar move
	db 37, SEED_BOMB ; Sunny Day → tutor move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, SUNNY_DAY ; Leaf Blade → Sunny Day
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, ICY_WIND ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, ICE_SHARD ; Ice Fang → Ice Shard
	db 25, HAIL ; Ice Shard → Hail
	db 29, BARRIER
	db 33, MIRROR_COAT
	db 37, ICE_BEAM ; Hail → TM move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, BLIZZARD
	db 0 ; no more level-up moves

SylveonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, DISARM_VOICE ; evolution move
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, DRAIN_KISS
	db 25, SKILL_SWAP
	db 29, HEAL_BELL ; Misty Terrain → HGSS tutor move
	db 33, LIGHT_SCREEN
	db 37, MOONBLAST
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, PLAY_ROUGH ; Psych Up → new move
	db 0 ; no more level-up moves

ZoruaEvosAttacks:
	db EVOLVE_LEVEL, 7, ZOROARK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZoroarkEvosAttacks:
	db EVOLVE_LEVEL, 10, ROCKRUFF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RockruffEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LycanrocEvosAttacks:
	db EVOLVE_LEVEL, 7, MIMIKYU
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Lycanroc_MidnightEvosAttacks:
	db EVOLVE_LEVEL, 7, MIMIKYU
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Lycanroc_DuskEvosAttacks:
	db EVOLVE_LEVEL, 7, MIMIKYU
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Lycanroc_DawnEvosAttacks:
	db EVOLVE_LEVEL, 7, MIMIKYU
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MimikyuEvosAttacks:
	db EVOLVE_LEVEL, 10, MAGNEMITE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, SUPERSONIC
	db 1, TACKLE
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	db 13, LIGHT_SCREEN
	db 17, SONIC_BOOM
	db 19, SPARK
	db 23, SWIFT ; Mirror Shot → TM move
	db 25, SELFDESTRUCT ; Metal Sound → TCG move
	db 29, THUNDERBOLT ; Electro Ball → TM move
	db 31, FLASH_CANNON
	db 35, SCREECH
	db 37, HIDDEN_POWER ; Discharge → TM move
	db 41, AGILITY ; Lock-On → event move
	db 43, GYRO_BALL ; Magnet Rise → Gyro Ball
	db 47, THUNDER ; Gyro Ball → TM move
	db 49, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db EVOLVE_LOCATION, MAGNET_TUNNEL, MAGNEZONE
	db 0 ; no more evolutions
	db 1, TRI_ATTACK ; evolution move
	db 1, SUPERSONIC
	db 1, TACKLE
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	db 13, LIGHT_SCREEN
	db 17, SONIC_BOOM
	db 19, SPARK
	db 23, SWIFT ; Mirror Shot → TM move
	db 25, SELFDESTRUCT ; Metal Sound → TCG move
	db 29, THUNDERBOLT ; Electro Ball → TM move
	db 33, FLASH_CANNON
	db 39, SCREECH
	db 43, HIDDEN_POWER ; Discharge → TM move
	db 49, AGILITY ; Lock-On → event move
	db 53, GYRO_BALL ; Magnet Rise → Gyro Ball
	db 59, THUNDER ; Gyro Ball → TM move
	db 63, ZAP_CANNON
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK ; evolution move
	db 1, MIRROR_COAT
	db 1, BARRIER
	db 1, SUPERSONIC
	db 1, TACKLE
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	db 13, LIGHT_SCREEN
	db 17, SONIC_BOOM
	db 19, SPARK
	db 23, SWIFT ; Mirror Shot → TM move
	db 25, SELFDESTRUCT ; Metal Sound → TCG move
	db 29, THUNDERBOLT ; Electro Ball → TM move
	db 33, FLASH_CANNON
	db 39, SCREECH
	db 43, HIDDEN_POWER ; Discharge → TM move
	db 49, AGILITY ; Lock-On → event move
	db 53, GYRO_BALL ; Magnet Rise → Gyro Ball
	db 59, THUNDER ; Gyro Ball → TM move
	db 63, ZAP_CANNON
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_HOLDING, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 1, TELEPORT ; Sharpen → RBY TM move
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, GROWTH ; Magnet Rise → new move
	db 29, ICE_BEAM ; Signal Beam → TM move
	db 34, BARRIER ; Recycle → event move
	db 40, THUNDERBOLT ; Discharge → TM move
	db 45, MIRROR_COAT ; Lock-On → new move
	db 50, TRI_ATTACK
	db 56, MIRROR_COAT ; Magic Coat → new move
	db 62, ZAP_CANNON
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db EVOLVE_HOLDING, DUBIOUS_DISC, PORYGONZ
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 1, DEFENSE_CURL
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, GROWTH ; Magnet Rise → new move
	db 29, ICE_BEAM ; Signal Beam → TM move
	db 34, BARRIER ; Recycle → event move
	db 40, THUNDERBOLT ; Discharge → TM move
	db 45, MIRROR_COAT ; Lock-On → new move
	db 50, TRI_ATTACK
	db 56, MIRROR_COAT ; Magic Coat → new move
	db 62, ZAP_CANNON
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

PorygonZEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 1, NASTY_PLOT ; evolution move
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, GROWTH ; Magnet Rise → new move
	db 29, ICE_BEAM ; Signal Beam → TM move
	db 34, PAIN_SPLIT ; Embargo → HGSS tutor move
	db 40, THUNDERBOLT ; Discharge → TM move
	db 45, MIRROR_COAT ; Lock-On → new move
	db 50, TRI_ATTACK
	db 56, MIRROR_COAT ; Magic Coat → new move
	db 62, ZAP_CANNON
	db 67, HYPER_BEAM
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 20, PERSIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Meowth_AlolaEvosAttacks:
	db EVOLVE_LEVEL, 20, PERSIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Persian_AlolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_LEVEL, 22, TOGETIC
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TogekissEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, ROTOM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RotomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Rotom_FanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Rotom_FrostEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Rotom_HeatEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Rotom_MowEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Rotom_WashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ChinglingEvosAttacks:
	db EVOLVE_LEVEL, 22, CHIMECHO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ChimechoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

EspurrEvosAttacks:
	db EVOLVE_LEVEL, 16, MEOWSTIC
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

Meowstic_MEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, TIMBURR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Meowstic_FEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, TIMBURR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TimburrEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GurdurrEvosAttacks:
	db EVOLVE_LEVEL, 16, CONKELDURR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ConkeldurrEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, DITTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PurrloinEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, LIEPARD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LiepardEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, MUK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Grimer_AlolaEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, MUK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Muk_AlolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

Nidoran_MEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDORINO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Nidoran_FEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDORINO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_LEVEL, 22, NIDOKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, HAXORUS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db EVOLVE_LEVEL, 21, SEVIPER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SeviperEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, ZANGOOSE
	db EVOLVE_ITEM, SUN_STONE, FENNEKIN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZangooseEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 24, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SwabluEvosAttacks:
	db EVOLVE_LEVEL, 31, ALTARIA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AltariaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MienfooEvosAttacks:
	db EVOLVE_LEVEL, 26, MIENSHAO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MienshaoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HawluchaEvosAttacks:
	db EVOLVE_LEVEL, 28, MAREEP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 33, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ShinxEvosAttacks:
	db EVOLVE_LEVEL, 28, LUXIO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LuxioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LuxrayEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, SANDSHREW
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Sandshrew_AlolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db EVOLVE_LEVEL, 25, CUTIEFLY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Sandslash_AlolaEvosAttacks:
	db EVOLVE_LEVEL, 25, CUTIEFLY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CutieflyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RibombeeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FlabebeEvosAttacks:
	db EVOLVE_LEVEL, 16, FLOETTE
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

FloetteEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FlorgesEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_LEVEL, 28, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ChespinEvosAttacks:
	db EVOLVE_LEVEL, 21, QUILLADIN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

QuilladinEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, CHESNAUGHT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ChesnaughtEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DeerlingEvosAttacks:
	db EVOLVE_LEVEL, 30, SAWSBUCK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SawsbuckEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CottoneeEvosAttacks:
	db EVOLVE_LEVEL, 25, WHIMSICOTT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WhimsicottEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FoongusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AmoongussEvosAttacks:
	db EVOLVE_LEVEL, 40, PHANTUMP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PhantumpEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TrevenantEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BonslyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db EVOLVE_LEVEL, 30, PASSIMIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PassimianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

StuffulEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BewearEvosAttacks:
	db EVOLVE_LEVEL, 31, GIRAFARIG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Girafarig_BetaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db EVOLVE_LEVEL, 34, LEDYBA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db EVOLVE_LEVEL, 38, JOLTIK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

JoltikEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GalvantulaEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, PINECO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db EVOLVE_LEVEL, 25, YANMA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db EVOLVE_LEVEL, 26, VENIPEDE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VenipedeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WhirlipedeEvosAttacks:
	db EVOLVE_LEVEL, 28, SCOLIPEDE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ScolipedeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MorelullEvosAttacks:
	db EVOLVE_LEVEL, 30, SHIINOTIC
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ShiinoticEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, BRELOOM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CroagunkEvosAttacks:
	db EVOLVE_LEVEL, 28, TOXICROAK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ToxicroakEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SandileEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KrokorokEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

KrookodileEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TympoleEvosAttacks:
	db EVOLVE_LEVEL, 35, PALPITOAD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PalpitoadEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SeismitoadEvosAttacks:
	db EVOLVE_LEVEL, 42, DRAMPA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DrampaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GoomyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, SUICUNE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SliggooEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GoodraEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db EVOLVE_LEVEL, 32, MISMAGIUS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 33, HAUNTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, OSHAWOTT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

OshawottEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DewottEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SamurottEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BuizelEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FloatzelEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AzurillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db EVOLVE_LEVEL, 20, ANORITH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AnorithEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ArmaldoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DewpiderEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

AraquanidEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, GYARADOS
	db EVOLVE_ITEM, WATER_STONE, MAGIKARP
	db EVOLVE_ITEM, FIRE_STONE, FEEBAS
	db EVOLVE_HAPPINESS, TR_MORNDAY, ARCHEN
	db EVOLVE_HAPPINESS, TR_NITE, ARCHEOPS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FeebasEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MiloticEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FinneonEvosAttacks:
	db EVOLVE_LEVEL, 40, LUMINEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LumineonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db EVOLVE_LEVEL, 40, CHINCHOU
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

StunfiskEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DwebbleEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CrustleEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db EVOLVE_LEVEL, 30, HITMONLEE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db EVOLVE_LEVEL, 55, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RioluEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LucarioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MedititeEvosAttacks:
	db EVOLVE_LEVEL, 16, MEDICHAM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MedichamEvosAttacks:
	db EVOLVE_LEVEL, 32, SNOVER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SnoverEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AbomasnowEvosAttacks:
	db EVOLVE_LEVEL, 14, FERROSEED
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FerroseedEvosAttacks:
	db EVOLVE_LEVEL, 36, FERROTHORN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FerrothornEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db EVOLVE_LEVEL, 18, NOSEPASS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NosepassEvosAttacks:
	db EVOLVE_LEVEL, 30, PROBOPASS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ProbopassEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 15, PUPITAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db EVOLVE_LEVEL, 20, NOIBAT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NoibatEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NoivernEvosAttacks:
	db EVOLVE_LEVEL, 18, DRUDDIGON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DruddigonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AxewEvosAttacks:
	db EVOLVE_LEVEL, 22, FRAXURE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FraxureEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HaxorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

Jangmo_oEvosAttacks:
	db EVOLVE_LEVEL, 27, HAKAMO_O
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

Hakamo_oEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

Kommo_oEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGEKISS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DeinoEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PURRLOIN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZweilousEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, NIDORAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HydreigonEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CYNDAQUIL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 25, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LittenEvosAttacks:
	db EVOLVE_LEVEL, 15, TORRACAT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TorracatEvosAttacks:
	db EVOLVE_LEVEL, 30, INCINEROAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

IncineroarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FennekinEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BraixenEvosAttacks:
	db EVOLVE_LEVEL, 18, DELPHOX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DelphoxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 4, GROWL ; Tail Whip → new move
	db 7, ASTONISH ; Roar → new move
	db 9, CHARM ; Baby-Doll Eyes → similar move
	db 10, QUICK_ATTACK
	db 12, CONFUSE_RAY
	db 15, FIRE_SPIN
	db 18, NIGHT_SHADE ; Payback → new move
	db 20, WILL_O_WISP
	db 23, FEINT_ATTACK
	db 26, HEX
	db 28, PAIN_SPLIT ; Flame Burst → HGSS tutor move
	db 31, EXTRASENSORY
	db 34, SAFEGUARD
	db 36, FLAMETHROWER
	db 39, HYPNOSIS ; Imprison → egg move
	db 42, FIRE_BLAST
	db 44, SHADOW_BALL ; Grudge → TM move
	db 47, DISABLE ; Captivate → egg move
	db 50, FLARE_BLITZ ; Inferno → egg move
	db 53, HEALINGLIGHT ; new move
	db 0 ; no more level-up moves
Vulpix_AlolaEvosAttacks:
	db EVOLVE_ITEM, ICE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, ICE_SHARD
	db 4, GROWL ; Tail Whip → new move
	db 7, ASTONISH ; Roar → new move
	db 9, CHARM ; Baby-Doll Eyes → similar move
	db 10, QUICK_ATTACK
	db 12, CONFUSE_RAY
	db 15, FIRE_SPIN
	db 18, NIGHT_SHADE ; Payback → new move
	;db 20, WILL_O_WISP
	db 23, FEINT_ATTACK
	db 26, HEX
	db 28, PAIN_SPLIT ; Flame Burst → HGSS tutor move
	db 31, EXTRASENSORY
	db 34, SAFEGUARD
	db 36, ICE_BEAM
	db 39, HYPNOSIS ; Imprison → egg move
	db 42, BLIZZARD
	db 44, SHADOW_BALL ; Grudge → TM move
	db 47, DISABLE ; Captivate → egg move
	db 50, AVALANCHE ; Inferno → egg move
	db 53, HEALINGLIGHT ; new move
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, FLAMETHROWER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 0 ; no more level-up moves
Ninetales_AlolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, ICE_BEAM
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 18, MAGCARGO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db EVOLVE_LEVEL, 27, HOUNDOUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FletchlingEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, FLETCHINDER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FletchinderEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

TalonflameEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HeatmorEvosAttacks:
	db EVOLVE_LEVEL, 20, DURANT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DurantEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ArchenEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ArcheopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RoggenrolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BoldoreEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GigalithEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CarbinkEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AmauraEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AurorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db EVOLVE_LEVEL, 31, WEAVILE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CryogonalEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SnoruntEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GlalieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

FrosslassEvosAttacks:
	db EVOLVE_LEVEL, 23, SWINUB
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SigilyphEvosAttacks:
	db EVOLVE_LEVEL, 30, DRILBUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db EVOLVE_LEVEL, 38, BALTOY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BaltoyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ClaydolEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLETT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GolettEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

GolurkEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BronzorEvosAttacks:
	db EVOLVE_LEVEL, 25, BRONZONG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BronzongEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HonedgeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DoubladeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

AegislashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

PawniardEvosAttacks:
	db EVOLVE_LEVEL, 24, BISHARP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

BisharpEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

YamaskEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CofagrigusEvosAttacks:
	db EVOLVE_LEVEL, 25, LITWICK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LitwickEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LampentEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ChandelureEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SpiritombEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DuskullEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, KROKOROK
	db EVOLVE_STAT, 20, ATK_GT_DEF, SANDILE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, DUSCLOPS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DusclopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

DusknoirEvosAttacks:
	db EVOLVE_LEVEL, 30, BUIZEL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db EVOLVE_LEVEL, 30, FLOATZEL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db EVOLVE_LEVEL, 30, AZURILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LatiasEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

LatiosEvosAttacks:
	db EVOLVE_LEVEL, 30, SILVALLY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

SilvallyEvosAttacks:
	db EVOLVE_LEVEL, 55, MAGEARNA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MagearnaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ShayminEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
Shaymin_SkyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

ZygardeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves
