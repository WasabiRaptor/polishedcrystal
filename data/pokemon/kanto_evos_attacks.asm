INCLUDE "constants.asm"

SECTION "Kanto Evolutions and Attacks", ROMX

INCLUDE "data/pokemon/kanto/evolution_moves.asm"

INCLUDE "data/pokemon/kanto/evos_attacks_pointers.asm"
INCLUDE "data/pokemon/kanto/evos_attacks_pointer_table.asm"

BulbasaurEvosAttacks:
	evolution EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 3, GROWL
	learnmove 7, LEECH_SEED
	learnmove 9, VINE_WHIP
	learnmove 13, POISONPOWDER
	learnmove 13, SLEEP_POWDER
	learnmove 15, MUD_SLAP ; Take Down → GSC TM move
	learnmove 19, RAZOR_LEAF
	learnmove 21, TAKE_DOWN ; Sweet Scent → Take Down
	learnmove 25, GROWTH
	learnmove 27, DOUBLE_EDGE
	learnmove 31, ANCIENTPOWER ; Worry Seed → event move
	learnmove 37, SEED_BOMB
	learnmove 43, SLUDGE_BOMB ; TM move
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	evolution EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 3, GROWL
	learnmove 7, LEECH_SEED
	learnmove 9, VINE_WHIP
	learnmove 13, POISONPOWDER
	learnmove 13, SLEEP_POWDER
	learnmove 15, MUD_SLAP ; Take Down → GSC TM move
	learnmove 20, RAZOR_LEAF
	learnmove 23, TAKE_DOWN ; Sweet Scent → Take Down
	learnmove 28, GROWTH
	learnmove 31, DOUBLE_EDGE
	learnmove 36, ANCIENTPOWER ; Worry Seed → event move
	learnmove 44, SEED_BOMB
	learnmove 50, SLUDGE_BOMB ; TM move
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, PETAL_DANCE ; evolution move
	learnmove 1, OUTRAGE ; HGSS tutor move
	learnmove 1, TACKLE
	learnmove 3, GROWL
	learnmove 7, LEECH_SEED
	learnmove 9, VINE_WHIP
	learnmove 13, POISONPOWDER
	learnmove 13, SLEEP_POWDER
	learnmove 15, MUD_SLAP ; Take Down → GSC TM move
	learnmove 20, RAZOR_LEAF
	learnmove 23, TAKE_DOWN ; Sweet Scent → Take Down
	learnmove 28, GROWTH
	learnmove 31, DOUBLE_EDGE
	learnmove 39, ANCIENTPOWER ; Worry Seed → event move
	learnmove 50, SEED_BOMB
	learnmove 53, SLUDGE_BOMB ; Solar Beam → Sludge Bomb
	learnmove 60, SOLAR_BEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	evolution EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, GROWL
	learnmove 7, EMBER
	learnmove 10, SMOKESCREEN
	learnmove 16, METAL_CLAW ; Dragon Rage → TM move
	learnmove 19, DRAGON_RAGE ; Scary Face → Dragon Rage
	learnmove 25, SCARY_FACE ; Fire Fang → Scary Face
	learnmove 28, FLAME_WHEEL ; Flame Burst → similar move
	learnmove 34, SLASH
	learnmove 37, FLAMETHROWER
	learnmove 43, FIRE_SPIN
	learnmove 46, CRUNCH
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	evolution EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, GROWL
	learnmove 7, EMBER
	learnmove 10, SMOKESCREEN
	learnmove 17, METAL_CLAW ; Dragon Rage → TM move
	learnmove 21, DRAGON_RAGE ; Scary Face → Dragon Rage
	learnmove 28, SCARY_FACE ; Fire Fang → Scary Face
	learnmove 32, FLAME_WHEEL ; Flame Burst → similar move
	learnmove 39, SLASH
	learnmove 43, FLAMETHROWER
	learnmove 50, FIRE_SPIN
	learnmove 54, CRUNCH
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, WING_ATTACK ; evolution move
	learnmove 1, FLARE_BLITZ
	learnmove 1, DRAGONBREATH
	learnmove 1, DRAGON_CLAW
	learnmove 1, SHADOW_CLAW
	learnmove 1, AIR_SLASH
	learnmove 1, OUTRAGE ; HGSS tutor move
	learnmove 1, SCRATCH
	learnmove 1, GROWL
	learnmove 7, EMBER
	learnmove 10, SMOKESCREEN
	learnmove 17, METAL_CLAW ; Dragon Rage → TM move
	learnmove 21, DRAGON_RAGE ; Scary Face → Dragon Rage
	learnmove 28, SCARY_FACE ; Fire Fang → Scary Face
	learnmove 32, FLAME_WHEEL ; Flame Burst → similar move
	learnmove 41, SLASH
	learnmove 47, FLAMETHROWER
	learnmove 56, FIRE_SPIN
	learnmove 62, CRUNCH
	learnmove 71, FLARE_BLITZ
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	evolution EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 4, LEER ; Tail Whip → similar move
	learnmove 7, WATER_GUN
	learnmove 10, DEFENSE_CURL ; Withdraw → similar move
	learnmove 13, AQUA_JET ; Bubble → egg move
	learnmove 16, BITE
	learnmove 19, RAPID_SPIN
	learnmove 22, PROTECT
	learnmove 25, WATER_PULSE
	learnmove 28, AQUA_TAIL
	learnmove 31, CLOSE_COMBAT ; Skull Bash → new move
	learnmove 34, MIRROR_COAT ; Iron Defense → egg move
	learnmove 37, RAIN_DANCE
	learnmove 40, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	evolution EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 4, LEER ; Tail Whip → similar move
	learnmove 7, WATER_GUN
	learnmove 10, DEFENSE_CURL ; Withdraw → similar move
	learnmove 13, AQUA_JET ; Bubble → egg move
	learnmove 16, BITE
	learnmove 20, RAPID_SPIN
	learnmove 24, PROTECT
	learnmove 28, WATER_PULSE
	learnmove 32, AQUA_TAIL
	learnmove 36, CLOSE_COMBAT ; Skull Bash → new move
	learnmove 40, MIRROR_COAT ; Iron Defense → egg move
	learnmove 44, RAIN_DANCE
	learnmove 48, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, FLASH_CANNON ; evolution move
	learnmove 1, AURA_SPHERE ; new move
	learnmove 1, ZAP_CANNON ; event move
	learnmove 1, OUTRAGE ; HGSS tutor move
	learnmove 1, TACKLE
	learnmove 4, LEER ; Tail Whip → similar move
	learnmove 7, WATER_GUN
	learnmove 10, DEFENSE_CURL ; Withdraw → similar move
	learnmove 13, AQUA_JET ; Bubble → egg move
	learnmove 16, BITE
	learnmove 20, RAPID_SPIN
	learnmove 24, PROTECT
	learnmove 28, WATER_PULSE
	learnmove 32, AQUA_TAIL
	learnmove 39, CLOSE_COMBAT ; Skull Bash → new move
	learnmove 46, MIRROR_COAT ; Iron Defense → egg move
	learnmove 53, RAIN_DANCE
	learnmove 60, HYDRO_PUMP
	learnmove 67, IRON_HEAD ; TM move
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	evolution EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, STRING_SHOT
	learnmove 9, BUG_BITE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	evolution EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	learnmove 1, TACKLE ; Caterpie move
	learnmove 1, STRING_SHOT ; Caterpie move
	learnmove 1, DEFENSE_CURL ; Harden → similar move
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE ; Caterpie move
	learnmove 1, STRING_SHOT ; Caterpie move
	learnmove 1, GUST
	learnmove 11, CONFUSION
	learnmove 13, POISONPOWDER
	learnmove 15, STUN_SPORE
	learnmove 17, SLEEP_POWDER ; Psybeam → Sleep Powder
	learnmove 19, PSYBEAM ; Silver Wind → Psybeam
	learnmove 23, SUPERSONIC
	learnmove 25, SAFEGUARD
	learnmove 29, HYPNOSIS ; Whirlwind → new move
	learnmove 31, BUG_BUZZ
	learnmove 35, REFLECT ; Rage Powder → RBY TM move
	learnmove 37, AGILITY ; Captivate → new move
	learnmove 43, AIR_SLASH
	learnmove 47, PSYCHIC_M ; Quiver Dance → TM move
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	evolution EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	learnmove 1, POISON_STING
	learnmove 1, STRING_SHOT
	learnmove 9, BUG_BITE
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	evolution EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	learnmove 1, POISON_STING ; Weedle move
	learnmove 1, STRING_SHOT ; Weedle move
	learnmove 1, DEFENSE_CURL ; Harden → similar move
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, POISON_STING ; Weedle move
	learnmove 1, STRING_SHOT ; Weedle move
	learnmove 1, FURY_SWIPES ; Fury Attack → similar move
	learnmove 1, U_TURN ; evolution move
	learnmove 14, RAGE
	learnmove 17, PURSUIT
	learnmove 20, FOCUS_ENERGY
	learnmove 23, VENOSHOCK
	learnmove 26, FEINT_ATTACK ; Assurance → similar move
	learnmove 29, TOXIC_SPIKES
	learnmove 32, PIN_MISSILE
	learnmove 35, POISON_JAB
	learnmove 38, AGILITY
	learnmove 41, SWORDS_DANCE ; Endeavor → TM move
	learnmove 44, OUTRAGE ; Fell Stinger → Let's Go move
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	evolution EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 5, GUST ; Sand Attack → Gust
	learnmove 9, MUD_SLAP ; Gust → GSC TM move
	learnmove 13, QUICK_ATTACK
	learnmove 17, RAGE ; Whirlwind → RBY TM move
	learnmove 21, CHARM ; Twister → egg move
	learnmove 25, SWIFT ; Feather Dance → TM move
	learnmove 29, AGILITY
	learnmove 33, WING_ATTACK
	learnmove 37, ROOST
	learnmove 41, DRILL_PECK ; Tailwind → new move
	learnmove 45, STEEL_WING ; Mirror Move → TM move
	learnmove 49, AIR_SLASH
	learnmove 53, HURRICANE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	evolution EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 5, GUST ; Sand Attack → Gust
	learnmove 9, MUD_SLAP ; Gust → GSC TM move
	learnmove 13, QUICK_ATTACK
	learnmove 17, RAGE ; Whirlwind → RBY TM move
	learnmove 22, CHARM ; Twister → egg move
	learnmove 27, SWIFT ; Feather Dance → TM move
	learnmove 32, AGILITY
	learnmove 37, WING_ATTACK
	learnmove 42, ROOST
	learnmove 47, DRILL_PECK ; Tailwind → new move
	learnmove 52, STEEL_WING ; Mirror Move → TM move
	learnmove 57, AIR_SLASH
	learnmove 62, HURRICANE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 5, MUD_SLAP ; Sand Attack → similar move
	learnmove 9, GUST
	learnmove 13, QUICK_ATTACK
	learnmove 17, RAGE ; Whirlwind → RBY TM move
	learnmove 22, CHARM ; Twister → egg move
	learnmove 27, SWIFT ; Feather Dance → TM move
	learnmove 32, AGILITY
	learnmove 38, WING_ATTACK
	learnmove 44, ROOST
	learnmove 50, DRILL_PECK ; Tailwind → new move
	learnmove 56, STEEL_WING ; Mirror Move → TM move
	learnmove 62, AIR_SLASH
	learnmove 68, HURRICANE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	evolution EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 4, QUICK_ATTACK
	learnmove 7, FOCUS_ENERGY
	learnmove 10, BITE
	learnmove 13, PURSUIT
	learnmove 16, HYPER_FANG
	learnmove 19, SUCKER_PUNCH
	learnmove 22, CRUNCH
	learnmove 25, FEINT_ATTACK ; Assurance → similar move
	learnmove 28, SUPER_FANG
	learnmove 31, DOUBLE_EDGE
	learnmove 34, COUNTER ; Endeavor → egg move
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SCARY_FACE ; evolution move
	learnmove 1, SWORDS_DANCE
	learnmove 1, TACKLE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 4, QUICK_ATTACK
	learnmove 7, FOCUS_ENERGY
	learnmove 10, BITE
	learnmove 13, PURSUIT
	learnmove 16, HYPER_FANG
	learnmove 19, SUCKER_PUNCH
	learnmove 24, CRUNCH
	learnmove 29, FEINT_ATTACK ; Assurance → similar move
	learnmove 34, SUPER_FANG
	learnmove 39, DOUBLE_EDGE
	learnmove 44, COUNTER ; Endeavor → egg move
	db 0 ; no more level-up moves

Rattata_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

Raticate_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves


EkansEvosAttacks:
	evolution EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	learnmove 1, WRAP
	learnmove 1, LEER
	learnmove 4, POISON_STING
	learnmove 9, BITE
	learnmove 12, GLARE
	learnmove 17, SCREECH
	learnmove 20, ACID
	learnmove 25, DISABLE ; Stockpile + Spit Up + Swallow → egg move
	learnmove 28, PURSUIT ; Acid Spray → egg move
	learnmove 35, POISON_JAB ; Mud Bomb → TM move
	learnmove 36, LEECH_LIFE ; Gastro Acid → TM move
	learnmove 38, IRON_TAIL ; Belch → TM move
	learnmove 41, HAZE
	learnmove 44, BULK_UP ; Coil → TM move
	learnmove 49, GUNK_SHOT
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, WRAP
	learnmove 1, LEER
	learnmove 1, CRUNCH ; evolution move
	learnmove 4, POISON_STING
	learnmove 9, BITE
	learnmove 12, GLARE
	learnmove 17, SCREECH
	learnmove 20, ACID
	learnmove 27, DISABLE ; Stockpile + Spit Up + Swallow → egg move
	learnmove 32, PURSUIT ; Acid Spray → egg move
	learnmove 39, POISON_JAB ; Mud Bomb → TM move
	learnmove 44, LEECH_LIFE ; Gastro Acid → TM move
	learnmove 48, IRON_TAIL ; Belch → TM move
	learnmove 51, HAZE
	learnmove 56, BULK_UP ; Coil → TM move
	learnmove 63, GUNK_SHOT
	db 0 ; no more level-up moves


PikachuEvosAttacks:
	evolution EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	learnmove 1, THUNDERSHOCK
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 5, GROWL
	learnmove 7, CHARM ; Play Nice → Pichu move
	learnmove 10, QUICK_ATTACK
	learnmove 13, DOUBLE_KICK ; Electro Ball → Let's Go move
	learnmove 18, THUNDER_WAVE
	learnmove 21, MUD_SLAP ; Feint → GSC TM move
	learnmove 23, DOUBLE_TEAM
	learnmove 26, SPARK
	learnmove 29, IRON_TAIL ; Nuzzle → TM move
	learnmove 34, EXTREMESPEED ; Discharge → event move
	learnmove 37, BODY_SLAM ; Slam → TM move
	learnmove 42, THUNDERBOLT
	learnmove 45, AGILITY
	learnmove 50, WILD_CHARGE
	learnmove 53, LIGHT_SCREEN
	learnmove 58, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, THUNDERSHOCK
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, QUICK_ATTACK
	learnmove 1, THUNDERBOLT
	db 0 ; no more level-up moves

Raichu_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	evolution EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, DEFENSE_CURL
	learnmove 3, MUD_SLAP ; Sand Attack → similar move
	learnmove 5, POISON_STING
	learnmove 7, ROLLOUT
	learnmove 9, RAPID_SPIN
	learnmove 11, PIN_MISSILE ; Fury Cutter → new move
	learnmove 14, MAGNITUDE
	learnmove 17, SWIFT
	learnmove 20, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 23, METAL_CLAW ; Sand Tomb → HGSS tutor move
	learnmove 26, SLASH
	learnmove 30, DIG
	learnmove 34, GYRO_BALL
	learnmove 38, SWORDS_DANCE
	learnmove 42, SANDSTORM
	learnmove 46, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, SLASH ; Crush Claw → Slash ; evolution move
	learnmove 1, DEFENSE_CURL
	learnmove 3, MUD_SLAP ; Sand Attack → similar move
	learnmove 5, POISON_STING
	learnmove 7, ROLLOUT
	learnmove 9, RAPID_SPIN
	learnmove 11, PIN_MISSILE ; Fury Cutter → new move
	learnmove 14, MAGNITUDE
	learnmove 17, SWIFT
	learnmove 20, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 24, SUPER_FANG ; Sand Tomb → HGSS tutor move
	learnmove 28, METAL_CLAW ; Slash → TM move
	learnmove 33, DIG
	learnmove 38, GYRO_BALL
	learnmove 43, SWORDS_DANCE
	learnmove 48, SANDSTORM
	learnmove 53, EARTHQUAKE
	db 0 ; no more level-up moves

Sandshrew_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

Sandslash_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

Nidoran_FEvosAttacks:
	evolution EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, SCRATCH
	learnmove 7, LEER ; Tail Whip → similar move
	learnmove 9, DOUBLE_KICK
	learnmove 13, POISON_STING
	learnmove 19, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 21, BITE
	learnmove 25, SWEET_KISS ; Helping Hand → event move
	learnmove 31, TOXIC_SPIKES
	learnmove 37, CRUNCH
	learnmove 43, CHARM ; Captivate → egg move
	learnmove 45, POISON_JAB
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	evolution EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, SCRATCH
	learnmove 7, LEER ; Tail Whip → similar move
	learnmove 9, DOUBLE_KICK
	learnmove 13, POISON_STING
	learnmove 20, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 23, BITE
	learnmove 28, SWEET_KISS ; Helping Hand → event move
	learnmove 35, TOXIC_SPIKES
	learnmove 43, CRUNCH
	learnmove 50, CHARM ; Captivate → egg move
	learnmove 58, POISON_JAB
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, CLOSE_COMBAT ; Superpower → similar move
	learnmove 1, SCRATCH
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, DOUBLE_KICK
	learnmove 1, POISON_STING
	learnmove 23, OUTRAGE ; Chip Away → HGSS tutor move
	learnmove 35, BODY_SLAM
	learnmove 43, EARTH_POWER
	learnmove 58, CLOSE_COMBAT ; Superpower → similar move
	db 0 ; no more level-up moves

Nidoran_MEvosAttacks:
	evolution EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	learnmove 1, LEER
	learnmove 1, PECK
	learnmove 7, FOCUS_ENERGY
	learnmove 9, DOUBLE_KICK
	learnmove 13, POISON_STING
	learnmove 19, FURY_SWIPES ; Fury Attack → similar move
	learnmove 21, HORN_ATTACK
	learnmove 25, SWEET_KISS ; Helping Hand → event move
	learnmove 31, TOXIC_SPIKES
	learnmove 37, POISON_JAB
	learnmove 43, CHARM ; Captivate → egg move
	learnmove 45, MEGAHORN ; Horn Drill → Nidoking move
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	evolution EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	learnmove 1, LEER
	learnmove 1, PECK
	learnmove 7, FOCUS_ENERGY
	learnmove 9, DOUBLE_KICK
	learnmove 13, POISON_STING
	learnmove 20, FURY_SWIPES ; Fury Attack → similar move
	learnmove 23, HORN_ATTACK
	learnmove 28, SWEET_KISS ; Helping Hand → event move
	learnmove 35, TOXIC_SPIKES
	learnmove 43, POISON_JAB
	learnmove 50, CHARM ; Captivate → egg move
	learnmove 58, MEGAHORN ; Horn Drill → Nidoking move
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, MEGAHORN
	learnmove 1, PECK
	learnmove 1, FOCUS_ENERGY
	learnmove 1, DOUBLE_KICK
	learnmove 1, POISON_STING
	learnmove 23, OUTRAGE ; Chip Away → HGSS tutor move
	learnmove 35, THRASH
	learnmove 43, EARTH_POWER
	learnmove 58, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	evolution EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	learnmove 1, DISARMING_VOICE
	learnmove 1, TACKLE ; Pound → similar move
	learnmove 1, GROWL
	learnmove 1, ENCORE
	learnmove 7, SING
	learnmove 10, DOUBLE_SLAP
	learnmove 13, DEFENSE_CURL
	learnmove 16, SWEET_KISS ; Follow Me → new move
	learnmove 19, DIZZY_PUNCH ; Bestow → Crystal unique move
	learnmove 22, TRI_ATTACK ; Wake-Up Slap → RBY TM move
	learnmove 25, MINIMIZE
	learnmove 28, PLAY_ROUGH ; Stored Power → new move
	learnmove 31, METRONOME
	learnmove 34, REFLECT ; Cosmic Power → TM move
	learnmove 37, LIGHT_SCREEN ; Lucky Chant → TM move
	learnmove 40, BODY_SLAM
	learnmove 46, MOONBLAST
	learnmove 49, BELLY_DRUM ; Gravity → egg move
	learnmove 50, EXTRASENSORY ; Meteor Mash → new move
	learnmove 55, HEAL_BELL ; Healing Wish → HGSS tutor move
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DISARMING_VOICE
	learnmove 1, PLAY_ROUGH ; Let's Go TM move
	learnmove 1, SING
	learnmove 1, MINIMIZE
	learnmove 1, METRONOME
	learnmove 1, DOUBLE_SLAP
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	evolution EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	learnmove 1, EMBER
	learnmove 4, GROWL ; Tail Whip → new move
	learnmove 7, ASTONISH ; Roar → new move
	learnmove 9, CHARM ; Baby-Doll Eyes → similar move
	learnmove 10, QUICK_ATTACK
	learnmove 12, CONFUSE_RAY
	learnmove 15, FIRE_SPIN
	learnmove 18, NIGHT_SHADE ; Payback → new move
	learnmove 20, WILL_O_WISP
	learnmove 23, FEINT_ATTACK
	learnmove 26, HEX
	learnmove 28, PAIN_SPLIT ; Flame Burst → HGSS tutor move
	learnmove 31, EXTRASENSORY
	learnmove 34, SAFEGUARD
	learnmove 36, FLAMETHROWER
	learnmove 39, HYPNOSIS ; Imprison → egg move
	learnmove 42, FIRE_BLAST
	learnmove 44, SHADOW_BALL ; Grudge → TM move
	learnmove 47, DISABLE ; Captivate → egg move
	learnmove 50, FLARE_BLITZ ; Inferno → egg move
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, NASTY_PLOT
	learnmove 1, FLAMETHROWER
	learnmove 1, QUICK_ATTACK
	learnmove 1, CONFUSE_RAY
	learnmove 1, SAFEGUARD
	db 0 ; no more level-up moves

Vulpix_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

Ninetales_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	evolution EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	learnmove 1, SING
	learnmove 1, SWEET_KISS ; Igglybuff move
	learnmove 3, DEFENSE_CURL
	learnmove 5, TACKLE ; Pound → similar move
	learnmove 9, DIZZY_PUNCH ; Play Nice → Crystal unique move
	learnmove 11, DISARMING_VOICE
	learnmove 14, DISABLE
	learnmove 17, DOUBLE_SLAP
	learnmove 20, ROLLOUT
	learnmove 22, CHARM ; Round → Igglybuff move
	learnmove 27, MEAN_LOOK ; Wake-Up Slap → new move
	learnmove 30, REST
	learnmove 32, BODY_SLAM
	learnmove 35, GYRO_BALL
	learnmove 38, HEAL_BELL ; Mimic → HGSS tutor move
	learnmove 41, HYPER_VOICE
	learnmove 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, MINIMIZE ; Let's Go move
	learnmove 1, DOUBLE_EDGE
	learnmove 1, PLAY_ROUGH
	learnmove 1, SING
	learnmove 1, DEFENSE_CURL
	learnmove 1, DISABLE
	learnmove 1, DOUBLE_SLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	evolution EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	learnmove 1, ABSORB
	learnmove 5, SUPERSONIC
	learnmove 7, ASTONISH
	learnmove 11, BITE
	learnmove 13, GUST ; Wing Attack → egg move
	learnmove 17, CONFUSE_RAY
	learnmove 19, WING_ATTACK ; Air Cutter → Wing Attack
	learnmove 23, SWIFT
	learnmove 25, SUPER_FANG ; Poison Fang → HGSS tutor move
	learnmove 29, MEAN_LOOK
	learnmove 31, LEECH_LIFE
	learnmove 35, HAZE
	learnmove 37, VENOSHOCK
	learnmove 41, AIR_SLASH
	learnmove 43, PURSUIT ; Quick Guard → egg move
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	evolution EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	learnmove 1, SCREECH
	learnmove 1, ABSORB
	learnmove 1, CRUNCH ; Let's Go move
	learnmove 5, SUPERSONIC
	learnmove 7, ASTONISH
	learnmove 11, BITE
	learnmove 13, GUST ; Wing Attack → egg move
	learnmove 17, CONFUSE_RAY
	learnmove 19, WING_ATTACK ; Air Cutter → Wing Attack
	learnmove 24, SWIFT
	learnmove 27, SUPER_FANG ; Poison Fang → HGSS tutor move
	learnmove 32, MEAN_LOOK
	learnmove 35, LEECH_LIFE
	learnmove 40, HAZE
	learnmove 43, VENOSHOCK
	learnmove 48, AIR_SLASH
	learnmove 51, PURSUIT ; Quick Guard → egg move
	db 0 ; no more level-up moves

OddishEvosAttacks:
	evolution EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	learnmove 1, ABSORB
	learnmove 1, GROWTH
	learnmove 5, LEECH_SEED ; Sweet Scent → event move
	learnmove 9, ACID
	learnmove 13, POISONPOWDER
	learnmove 14, STUN_SPORE
	learnmove 15, SLEEP_POWDER
	learnmove 19, MEGA_DRAIN
	learnmove 23, CHARM ; Lucky Chant → egg move
	learnmove 31, GIGA_DRAIN
	learnmove 35, TOXIC
	learnmove 39, HYPER_VOICE ; Natural Gift → tutor move
	learnmove 43, MOONBLAST
	learnmove 47, GROWTH ; Grassy Terrain → GSC move
	learnmove 51, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	evolution EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	evolution EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	learnmove 1, ABSORB
	learnmove 5, LEECH_SEED ; Sweet Scent → event move
	learnmove 9, ACID
	learnmove 13, POISONPOWDER
	learnmove 14, STUN_SPORE
	learnmove 15, SLEEP_POWDER
	learnmove 19, MEGA_DRAIN
	learnmove 24, CHARM ; Lucky Chant → egg move
	learnmove 34, GIGA_DRAIN
	learnmove 39, TOXIC
	learnmove 44, HYPER_VOICE ; Natural Gift → tutor move
	learnmove 49, MOONBLAST
	learnmove 54, GROWTH ; Grassy Terrain → Crystal move
	learnmove 59, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, MEGA_DRAIN
	learnmove 1, HEAL_BELL ; Aromatherapy → similar move
	learnmove 1, POISONPOWDER
	learnmove 1, STUN_SPORE
	learnmove 39, GROWTH
	learnmove 49, MOONBLAST ; Petal Blizzard → Gloom move
	learnmove 59, PETAL_DANCE
	learnmove 69, SOLAR_BEAM
	db 0 ; no more level-up moves

ParasEvosAttacks:
	evolution EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 2, SLEEP_POWDER ; Let's Go move
	learnmove 4, STUN_SPORE
	learnmove 6, POISONPOWDER
	learnmove 11, ABSORB
	learnmove 17, BUG_BITE ; Fury Cutter → egg move
	learnmove 22, SPORE
	learnmove 27, SLASH
	learnmove 33, GROWTH
	learnmove 38, GIGA_DRAIN
	learnmove 43, LEECH_LIFE ; Aromatherapy → TM move
	learnmove 54, X_SCISSOR
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SHADOW_CLAW ; evolution move
	learnmove 1, SCRATCH
	learnmove 2, SLEEP_POWDER ; Let's Go move
	learnmove 4, STUN_SPORE
	learnmove 6, POISONPOWDER
	learnmove 11, ABSORB
	learnmove 17, BUG_BITE ; Fury Cutter → egg move
	learnmove 22, SPORE
	learnmove 29, SLASH
	learnmove 37, GROWTH
	learnmove 44, GIGA_DRAIN
	learnmove 51, LEECH_LIFE ; Aromatherapy → TM move
	learnmove 66, X_SCISSOR
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	evolution EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, DISABLE
	learnmove 1, FORESIGHT
	learnmove 5, SUPERSONIC
	learnmove 11, CONFUSION
	learnmove 13, POISONPOWDER
	learnmove 17, PSYBEAM
	learnmove 23, BUG_BITE ; Stun Spore → HGSS tutor move
	learnmove 25, STUN_SPORE ; Signal Beam → Stun Spore
	learnmove 29, SLEEP_POWDER
	learnmove 35, LEECH_LIFE
	learnmove 37, ZEN_HEADBUTT
	learnmove 41, BATON_PASS ; Poison Fang → egg move
	learnmove 47, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, BUG_BUZZ
	learnmove 1, TACKLE
	learnmove 1, DISABLE
	learnmove 1, FORESIGHT
	learnmove 5, SUPERSONIC
	learnmove 11, CONFUSION
	learnmove 13, POISONPOWDER
	learnmove 17, PSYBEAM
	learnmove 23, BUG_BITE ; Stun Spore → HGSS tutor move
	learnmove 25, STUN_SPORE ; Signal Beam → Stun Spore
	learnmove 29, SLEEP_POWDER
	learnmove 31, GUST
	learnmove 37, LEECH_LIFE
	learnmove 41, ZEN_HEADBUTT
	learnmove 47, BATON_PASS ; Poison Fang → egg move
	learnmove 55, PSYCHIC_M
	learnmove 59, BUG_BUZZ
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	evolution EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	learnmove 1, MUD_SLAP ; Sand Attack → Mud-Slap
	learnmove 1, SCRATCH
	learnmove 1, CHARM ; XD move
	learnmove 4, GROWL
	learnmove 7, ASTONISH
	learnmove 10, AGILITY ; Mud-Slap → Let's Go move
	learnmove 14, MAGNITUDE
	learnmove 18, BULLDOZE
	learnmove 22, SUCKER_PUNCH
	learnmove 25, ANCIENTPOWER ; Mud Bomb → egg move
	learnmove 28, EARTH_POWER
	learnmove 31, DIG
	learnmove 35, SLASH
	learnmove 39, EARTHQUAKE
	learnmove 43, NIGHT_SLASH ; Fissure → Dugtrio move
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TRI_ATTACK ; Sand Tomb → Tri Attack ; evolution move
	learnmove 1, NIGHT_SLASH
	learnmove 1, MUD_SLAP ; Sand Attack → Mud-Slap
	learnmove 1, SCRATCH
	learnmove 1, CHARM ; XD move
	learnmove 4, GROWL
	learnmove 7, ASTONISH
	learnmove 10, AGILITY ; Mud-Slap → Let's Go move
	learnmove 14, MAGNITUDE
	learnmove 18, BULLDOZE
	learnmove 22, SUCKER_PUNCH
	learnmove 25, ANCIENTPOWER ; Mud Bomb → egg move
	learnmove 30, EARTH_POWER
	learnmove 35, DIG
	learnmove 41, SLASH
	learnmove 47, EARTHQUAKE
	learnmove 53, NIGHT_SLASH ; Fissure → Night Slash
	db 0 ; no more level-up moves

Diglett_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

Dugtrio_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	evolution EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, GROWL
	learnmove 6, BITE
	learnmove 9, ASTONISH ; Fake Out → new move
	learnmove 14, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 17, SCREECH
	learnmove 22, FEINT_ATTACK
	learnmove 25, PURSUIT ; Taunt → egg move
	learnmove 30, PAY_DAY
	learnmove 33, SLASH
	learnmove 38, NASTY_PLOT
	learnmove 41, THIEF ; Assurance → TM move
	learnmove 46, CHARM ; Captivate → egg move
	learnmove 49, NIGHT_SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, BUBBLEBEAM ; RBY TM move
	learnmove 1, PLAY_ROUGH
	learnmove 1, SWIFT ; evolution move
	learnmove 1, SCRATCH
	learnmove 1, GROWL
	learnmove 6, BITE
	learnmove 9, ASTONISH ; Fake Out → new move
	learnmove 14, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 17, SCREECH
	learnmove 22, FEINT_ATTACK
	learnmove 25, PURSUIT ; Taunt → egg move
	learnmove 32, POWER_GEM
	learnmove 37, SLASH
	learnmove 44, NASTY_PLOT
	learnmove 49, THIEF ; Assurance → TM move
	learnmove 56, CHARM ; Captivate → egg move
	learnmove 61, NIGHT_SLASH
	db 0 ; no more level-up moves

Meowth_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

Persian_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	evolution EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 4, LEER ; Tail Whip → similar move
	learnmove 7, WATER_GUN
	learnmove 10, CONFUSION
	learnmove 13, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 16, WATER_PULSE
	learnmove 19, DISABLE
	learnmove 22, SCREECH
	learnmove 25, ZEN_HEADBUTT
	learnmove 28, AQUA_TAIL
	learnmove 31, RAIN_DANCE ; Soak → TM move
	learnmove 34, PSYBEAM ; Psych Up → egg move
	learnmove 47, AMNESIA
	learnmove 40, HYDRO_PUMP
	learnmove 43, PSYCHIC_M ; Wonder Room → TM move
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, AQUA_JET
	learnmove 4, LEER ; Tail Whip → similar move
	learnmove 7, WATER_GUN
	learnmove 10, CONFUSION
	learnmove 13, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 16, WATER_PULSE
	learnmove 19, DISABLE
	learnmove 22, SCREECH
	learnmove 25, ZEN_HEADBUTT
	learnmove 28, AQUA_TAIL
	learnmove 31, RAIN_DANCE ; Soak → TM move
	learnmove 36, PSYBEAM ; Psych Up → egg move
	learnmove 41, AMNESIA
	learnmove 46, HYDRO_PUMP
	learnmove 51, PSYCHIC_M ; Wonder Room → TM move
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	evolution EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, LOW_KICK
	learnmove 1, LEER
	learnmove 1, FOCUS_ENERGY
	learnmove 5, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 8, KARATE_CHOP
	learnmove 12, PURSUIT
	learnmove 15, SEISMIC_TOSS
	learnmove 19, SWAGGER
	learnmove 22, CROSS_CHOP
	learnmove 26, REVERSAL ; Assurance → egg move
	learnmove 29, FEINT_ATTACK ; Punishment → new move
	learnmove 33, THRASH
	learnmove 36, CLOSE_COMBAT
	learnmove 40, SCREECH
	learnmove 43, GUNK_SHOT ; Stomping Tantrum → HGSS tutor move
	learnmove 47, OUTRAGE
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, RAGE
	learnmove 1, SCRATCH
	learnmove 1, LOW_KICK
	learnmove 1, LEER
	learnmove 1, FOCUS_ENERGY
	learnmove 5, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 8, KARATE_CHOP
	learnmove 12, PURSUIT
	learnmove 15, SEISMIC_TOSS
	learnmove 19, SWAGGER
	learnmove 22, CROSS_CHOP
	learnmove 26, REVERSAL ; Assurance → egg move
	learnmove 30, FEINT_ATTACK ; Punishment → new move
	learnmove 35, THRASH
	learnmove 39, CLOSE_COMBAT
	learnmove 44, SCREECH
	learnmove 48, GUNK_SHOT ; Stomping Tantrum → HGSS tutor move
	learnmove 53, OUTRAGE
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	evolution EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, BITE
	learnmove 1, ROAR
	learnmove 6, EMBER
	learnmove 8, LEER
	learnmove 10, SAFEGUARD ; Odor Sleuth → egg move
	learnmove 12, BATON_PASS ; Helping Hand → new move
	learnmove 17, FLAME_WHEEL
	learnmove 19, REVERSAL
	learnmove 21, DOUBLE_KICK ; Fire Fang → egg move
	learnmove 23, TAKE_DOWN
	learnmove 28, FIRE_SPIN ; Flame Burst → egg move
	learnmove 30, AGILITY
	learnmove 32, THRASH ; Retaliate → egg move
	learnmove 34, FLAMETHROWER
	learnmove 39, CRUNCH
	learnmove 41, SUNNY_DAY ; Heat Wave → TM move
	learnmove 43, OUTRAGE
	learnmove 45, PLAY_ROUGH ; Flare Blitz → Let's Go move
	learnmove 49, FLARE_BLITZ
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DRAGON_DANCE ; new move
	learnmove 1, GROWL
	learnmove 1, BITE
	learnmove 1, ROAR
	learnmove 1, FLAME_WHEEL
	learnmove 1, TAKE_DOWN
	learnmove 1, EXTREMESPEED ; evolution move
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	evolution EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	learnmove 1, SWEET_KISS ; event move
	learnmove 1, WATER_GUN ; Water Sport → Water Gun
	learnmove 5, HYPNOSIS ; Water Gun → Hypnosis
	learnmove 8, DOUBLE_SLAP ; Hypnosis → Double Slap
	learnmove 11, AQUA_JET ; Bubble → new move
	learnmove 15, MUD_SLAP ; Double Slap → TM move
	learnmove 18, RAIN_DANCE
	learnmove 21, BODY_SLAM
	learnmove 25, BUBBLEBEAM
	learnmove 28, LOW_KICK ; Mud Shot → Let's Go move
	learnmove 31, BELLY_DRUM
	learnmove 35, GROWTH ; Wake-Up Slap → event move
	learnmove 38, HYDRO_PUMP
	learnmove 41, EARTH_POWER ; Mud Bomb → similar move
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	evolution EVOLVE_ITEM, WATER_STONE, POLIWRATH
	evolution EVOLVE_HOLDING, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	learnmove 1, SWEET_KISS ; event move
	learnmove 1, WATER_GUN ; Water Sport → Water Gun
	learnmove 5, HYPNOSIS ; Water Gun → Hypnosis
	learnmove 8, DOUBLE_SLAP ; Hypnosis → Double Slap
	learnmove 11, AQUA_JET ; Bubble → new move
	learnmove 15, MUD_SLAP ; Double Slap → TM move
	learnmove 18, RAIN_DANCE
	learnmove 21, BODY_SLAM
	learnmove 27, BUBBLEBEAM
	learnmove 28, LOW_KICK ; Mud Shot → Let's Go move
	learnmove 37, BELLY_DRUM
	learnmove 43, GROWTH ; Wake-Up Slap → event move
	learnmove 48, HYDRO_PUMP
	learnmove 53, EARTH_POWER ; Mud Bomb → similar move
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, BUBBLEBEAM
	learnmove 1, HYPNOSIS
	learnmove 1, DOUBLE_SLAP
	learnmove 1, CLOSE_COMBAT ; evolution move
	learnmove 32, DYNAMICPUNCH
	learnmove 43, EARTH_POWER ; Mind Reader → Poliwhirl move
	learnmove 53, CROSS_CHOP ; Circle Throw → similar move
	db 0 ; no more level-up moves

AbraEvosAttacks:
	evolution EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	learnmove 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	evolution EVOLVE_EVS, MON_SAT_EV, ALAKAZAM
	db 0 ; no more evolutions
	learnmove 1, TELEPORT
	learnmove 1, FORESIGHT ; evolution move
	learnmove 16, CONFUSION
	learnmove 18, DISABLE
	learnmove 21, PSYBEAM
	learnmove 23, NIGHT_SHADE ; Miracle Eye → Let's Go move
	learnmove 26, REFLECT
	learnmove 28, LIGHT_SCREEN ; Psycho Cut → egg move
	learnmove 31, RECOVER
	learnmove 33, BARRIER ; Telekinesis → egg move
	learnmove 36, BATON_PASS ; Ally Switch → new move
	learnmove 38, PSYCHIC_M
	learnmove 41, CALM_MIND
	learnmove 43, CONFUSE_RAY ; Role Play → new move
	learnmove 46, FUTURE_SIGHT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TRI_ATTACK ; RBY TM move
	learnmove 1, TELEPORT
	learnmove 1, FORESIGHT ; evolution move
	learnmove 16, CONFUSION
	learnmove 18, DISABLE
	learnmove 21, PSYBEAM
	learnmove 23, NIGHT_SHADE ; Miracle Eye → Let's Go move
	learnmove 26, REFLECT
	learnmove 28, LIGHT_SCREEN ; Psycho Cut → egg move
	learnmove 31, RECOVER
	learnmove 33, BARRIER ; Telekinesis → egg move
	learnmove 36, BATON_PASS ; Ally Switch → new move
	learnmove 38, PSYCHIC_M
	learnmove 41, CALM_MIND
	learnmove 43, CONFUSE_RAY ; Role Play → new move
	learnmove 46, FUTURE_SIGHT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	evolution EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	learnmove 1, LOW_KICK
	learnmove 1, LEER
	learnmove 3, FOCUS_ENERGY
	learnmove 7, KARATE_CHOP
	learnmove 9, FORESIGHT
	learnmove 13, MUD_SLAP ; Low Sweep → TM move
	learnmove 15, SEISMIC_TOSS
	learnmove 19, RAGE ; Revenge → RBY TM move
	learnmove 21, KNOCK_OFF
	learnmove 25, MACH_PUNCH ; Vital Throw → egg move
	learnmove 27, BULLET_PUNCH ; Wake-Up Slap → egg move
	learnmove 31, THRASH ; Dual Chop → event move
	learnmove 33, CLOSE_COMBAT ; Submission → new move
	learnmove 37, BULK_UP
	learnmove 39, CROSS_CHOP
	learnmove 43, SCARY_FACE
	learnmove 45, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	evolution EVOLVE_EVS, MON_ATK_EV, MACHAMP
	db 0 ; no more evolutions
	learnmove 1, LOW_KICK
	learnmove 1, LEER
	learnmove 3, FOCUS_ENERGY
	learnmove 7, KARATE_CHOP
	learnmove 9, FORESIGHT
	learnmove 13, MUD_SLAP ; Low Sweep → TM move
	learnmove 15, SEISMIC_TOSS
	learnmove 19, RAGE ; Revenge → RBY TM move
	learnmove 21, KNOCK_OFF
	learnmove 25, MACH_PUNCH ; Vital Throw → egg move
	learnmove 27, BULLET_PUNCH ; Wake-Up Slap → egg move
	learnmove 33, THRASH ; Dual Chop → event move
	learnmove 37, CLOSE_COMBAT ; Submission → new move
	learnmove 43, BULK_UP
	learnmove 47, CROSS_CHOP
	learnmove 53, SCARY_FACE
	learnmove 57, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, STRENGTH ; evolution move
	learnmove 1, LOW_KICK
	learnmove 1, LEER
	learnmove 3, FOCUS_ENERGY
	learnmove 7, KARATE_CHOP
	learnmove 9, FORESIGHT
	learnmove 13, MUD_SLAP ; Low Sweep → TM move
	learnmove 15, SEISMIC_TOSS
	learnmove 19, RAGE ; Revenge → RBY TM move
	learnmove 21, KNOCK_OFF
	learnmove 25, MACH_PUNCH ; Vital Throw → egg move
	learnmove 27, BULLET_PUNCH ; Wake-Up Slap → egg move
	learnmove 33, THRASH ; Dual Chop → event move
	learnmove 37, CLOSE_COMBAT ; Submission → new move
	learnmove 43, BULK_UP
	learnmove 47, CROSS_CHOP
	learnmove 53, SCARY_FACE
	learnmove 57, DYNAMICPUNCH
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	evolution EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	learnmove 1, VINE_WHIP
	learnmove 7, GROWTH
	learnmove 11, WRAP
	learnmove 13, SLEEP_POWDER
	learnmove 15, POISONPOWDER
	learnmove 17, STUN_SPORE
	learnmove 23, ACID
	learnmove 27, KNOCK_OFF
	learnmove 29, SWEET_KISS ; Sweet Scent → event move
	learnmove 39, RAZOR_LEAF
	learnmove 41, POISON_JAB
	learnmove 47, SUCKER_PUNCH ; Slam → HGSS tutor move
	learnmove 50, SWORDS_DANCE ; Wring Out → egg move
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	evolution EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	learnmove 1, VINE_WHIP
	learnmove 7, GROWTH
	learnmove 11, WRAP
	learnmove 13, SLEEP_POWDER
	learnmove 15, POISONPOWDER
	learnmove 17, STUN_SPORE
	learnmove 24, ACID
	learnmove 29, KNOCK_OFF
	learnmove 32, SWEET_KISS ; Sweet Scent → event move
	learnmove 44, RAZOR_LEAF
	learnmove 47, POISON_JAB
	learnmove 54, SUCKER_PUNCH ; Slam → HGSS tutor move
	learnmove 58, SWORDS_DANCE ; Wring Out → egg move
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, VINE_WHIP
	learnmove 1, SLEEP_POWDER
	learnmove 1, RAZOR_LEAF
	learnmove 32, SUCKER_PUNCH ; Leaf Storm → prior move
	learnmove 44, SWORDS_DANCE ; Leaf Blade → prior move
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	evolution EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	learnmove 1, POISON_STING
	learnmove 4, SUPERSONIC
	learnmove 7, WATER_GUN ; Constrict → new move
	learnmove 10, ACID
	learnmove 13, TOXIC_SPIKES
	learnmove 16, WATER_PULSE
	learnmove 19, WRAP
	learnmove 22, CONFUSE_RAY ; Acid Spray → event move
	learnmove 25, BUBBLEBEAM
	learnmove 28, BARRIER
	learnmove 31, POISON_JAB
	learnmove 34, VENOSHOCK ; Brine → tutor move
	learnmove 37, SCREECH
	learnmove 40, HEX
	learnmove 43, SLUDGE_BOMB ; Sludge Wave → TM move
	learnmove 46, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, POWER_WHIP ; evolution move
	learnmove 1, POISON_STING
	learnmove 4, SUPERSONIC
	learnmove 7, WATER_GUN ; Constrict → new move
	learnmove 10, ACID
	learnmove 13, TOXIC_SPIKES
	learnmove 16, WATER_PULSE
	learnmove 19, WRAP
	learnmove 22, CONFUSE_RAY ; Acid Spray → event move
	learnmove 25, BUBBLEBEAM
	learnmove 28, BARRIER
	learnmove 32, POISON_JAB
	learnmove 36, VENOSHOCK ; Brine → tutor move
	learnmove 40, SCREECH
	learnmove 44, HEX
	learnmove 48, SLUDGE_BOMB ; Sludge Wave → TM move
	learnmove 52, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	evolution EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, DEFENSE_CURL
	learnmove 4, MUD_SLAP ; Mud Sport → TM move
	learnmove 6, RAPID_SPIN ; Rock Polish → event move
	learnmove 10, ROLLOUT
	learnmove 12, MAGNITUDE
	learnmove 16, ROCK_THROW
	learnmove 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnmove 22, BULLDOZE
	learnmove 24, SELFDESTRUCT
	learnmove 28, SANDSTORM ; Stealth Rock → TM move
	learnmove 30, ROCK_BLAST
	learnmove 34, EARTHQUAKE
	learnmove 36, EXPLOSION
	learnmove 40, DOUBLE_EDGE
	learnmove 42, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	evolution EVOLVE_EVS, MON_DEF_EV, GOLEM
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, DEFENSE_CURL
	learnmove 4, MUD_SLAP ; Mud Sport → TM move
	learnmove 6, RAPID_SPIN ; Rock Polish → event move
	learnmove 10, ROLLOUT
	learnmove 12, MAGNITUDE
	learnmove 16, ROCK_THROW
	learnmove 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnmove 22, BULLDOZE
	learnmove 24, SELFDESTRUCT
	learnmove 30, SANDSTORM ; Stealth Rock → TM move
	learnmove 34, ROCK_BLAST
	learnmove 40, EARTHQUAKE
	learnmove 44, EXPLOSION
	learnmove 50, DOUBLE_EDGE
	learnmove 54, STONE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, DEFENSE_CURL
	learnmove 4, MUD_SLAP ; Mud Sport → TM move
	learnmove 6, RAPID_SPIN ; Rock Polish → event move
	learnmove 10, ROLLOUT
	learnmove 12, MAGNITUDE
	learnmove 16, ROCK_THROW
	learnmove 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnmove 22, BULLDOZE
	learnmove 24, SELFDESTRUCT
	learnmove 30, SANDSTORM ; Stealth Rock → TM move
	learnmove 34, ROCK_BLAST
	learnmove 40, EARTHQUAKE
	learnmove 44, EXPLOSION
	learnmove 50, DOUBLE_EDGE
	learnmove 54, STONE_EDGE
	learnmove 60, GYRO_BALL ; Heavy Slam → similar move
	db 0 ; no more level-up moves

Geodude_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

Graveler_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

Golem_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves


PonytaEvosAttacks:
	evolution EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, TACKLE
	learnmove 4, LEER ; Tail Whip → similar move
	learnmove 9, EMBER
	learnmove 13, FLAME_WHEEL
	learnmove 17, STOMP
	learnmove 21, LOW_KICK ; Flame Charge → event move
	learnmove 25, FIRE_SPIN
	learnmove 29, TAKE_DOWN
	learnmove 33, DOUBLE_KICK ; Inferno → egg move
	learnmove 37, AGILITY
	learnmove 41, FIRE_BLAST
	learnmove 45, EXTREMESPEED ; Bounce → new move
	learnmove 49, FLARE_BLITZ
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, PLAY_ROUGH ; evolution move
	learnmove 1, POISON_JAB
	learnmove 1, MEGAHORN
	learnmove 1, GROWL
	learnmove 1, TACKLE
	learnmove 4, LEER ; Tail Whip → similar move
	learnmove 9, EMBER
	learnmove 13, FLAME_WHEEL
	learnmove 17, STOMP
	learnmove 21, QUICK_ATTACK ; Flame Charge → egg move
	learnmove 25, FIRE_SPIN
	learnmove 29, TAKE_DOWN
	learnmove 33, DOUBLE_KICK ; Inferno → egg move
	learnmove 37, AGILITY
	learnmove 41, FIRE_BLAST
	learnmove 45, EXTREMESPEED ; Bounce → new move
	learnmove 49, FLARE_BLITZ
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	evolution EVOLVE_HOLDING, KINGS_ROCK, SLOWKING
	evolution EVOLVE_LEVEL, 37, SLOWBRO
	db 0 ; no more evolutions
	learnmove 1, CURSE
	learnmove 1, TACKLE
	learnmove 5, GROWL
	learnmove 9, WATER_GUN
	learnmove 14, CONFUSION
	learnmove 19, DISABLE
	learnmove 23, HEADBUTT
	learnmove 28, WATER_PULSE
	learnmove 32, ZEN_HEADBUTT
	learnmove 36, SAFEGUARD ; Slack Off → egg move
	learnmove 41, AMNESIA
	learnmove 45, PSYCHIC_M
	learnmove 49, RAIN_DANCE
	learnmove 54, BELLY_DRUM ; Psych Up → egg move
	learnmove 58, RECOVER ; Heal Pulse → similar move
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DEFENSE_CURL ; Withdraw → similar move ; evolution move
	learnmove 1, CURSE
	learnmove 1, TACKLE
	learnmove 5, GROWL
	learnmove 9, WATER_GUN
	learnmove 14, CONFUSION
	learnmove 19, DISABLE
	learnmove 23, HEADBUTT
	learnmove 28, WATER_PULSE
	learnmove 32, ZEN_HEADBUTT
	learnmove 36, SAFEGUARD ; Slack Off → egg move
	learnmove 43, AMNESIA
	learnmove 49, PSYCHIC_M
	learnmove 55, RAIN_DANCE
	learnmove 62, BELLY_DRUM ; Psych Up → egg move
	learnmove 68, RECOVER ; Heal Pulse → similar move
	db 0 ; no more level-up moves


MagnemiteEvosAttacks:
	evolution EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	learnmove 1, SUPERSONIC
	learnmove 1, TACKLE
	learnmove 5, THUNDERSHOCK
	learnmove 7, THUNDER_WAVE
	learnmove 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	learnmove 13, LIGHT_SCREEN
	learnmove 17, SONICBOOM
	learnmove 19, SPARK
	learnmove 23, SWIFT ; Mirror Shot → TM move
	learnmove 25, SELFDESTRUCT ; Metal Sound → TCG move
	learnmove 29, THUNDERBOLT ; Electro Ball → TM move
	learnmove 31, FLASH_CANNON
	learnmove 35, SCREECH
	learnmove 37, HIDDEN_POWER ; Discharge → TM move
	learnmove 41, AGILITY ; Lock-On → event move
	learnmove 43, GYRO_BALL ; Magnet Rise → Gyro Ball
	learnmove 47, THUNDER ; Gyro Ball → TM move
	learnmove 49, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	;evolution EVOLVE_LOCATION, MAGNET_TUNNEL, MAGNEZONE
	db 0 ; no more evolutions
	learnmove 1, TRI_ATTACK ; evolution move
	learnmove 1, SUPERSONIC
	learnmove 1, TACKLE
	learnmove 5, THUNDERSHOCK
	learnmove 7, THUNDER_WAVE
	learnmove 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	learnmove 13, LIGHT_SCREEN
	learnmove 17, SONICBOOM
	learnmove 19, SPARK
	learnmove 23, SWIFT ; Mirror Shot → TM move
	learnmove 25, SELFDESTRUCT ; Metal Sound → TCG move
	learnmove 29, THUNDERBOLT ; Electro Ball → TM move
	learnmove 33, FLASH_CANNON
	learnmove 39, SCREECH
	learnmove 43, HIDDEN_POWER ; Discharge → TM move
	learnmove 49, AGILITY ; Lock-On → event move
	learnmove 53, GYRO_BALL ; Magnet Rise → Gyro Ball
	learnmove 59, THUNDER ; Gyro Ball → TM move
	learnmove 63, ZAP_CANNON
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TRI_ATTACK ; evolution move
	learnmove 1, MIRROR_COAT
	learnmove 1, BARRIER
	learnmove 1, SUPERSONIC
	learnmove 1, TACKLE
	learnmove 5, THUNDERSHOCK
	learnmove 7, THUNDER_WAVE
	learnmove 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	learnmove 13, LIGHT_SCREEN
	learnmove 17, SONICBOOM
	learnmove 19, SPARK
	learnmove 23, SWIFT ; Mirror Shot → TM move
	learnmove 25, SELFDESTRUCT ; Metal Sound → TCG move
	learnmove 29, THUNDERBOLT ; Electro Ball → TM move
	learnmove 33, FLASH_CANNON
	learnmove 39, SCREECH
	learnmove 43, HIDDEN_POWER ; Discharge → TM move
	learnmove 49, AGILITY ; Lock-On → event move
	learnmove 53, GYRO_BALL ; Magnet Rise → Gyro Ball
	learnmove 59, THUNDER ; Gyro Ball → TM move
	learnmove 63, ZAP_CANNON
	db 0 ; no more level-up moves

Farfetch_dEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, POISON_JAB
	learnmove 1, BATON_PASS ; Brave Bird → event move
	learnmove 1, PECK
	learnmove 1, MUD_SLAP ; Sand Attack → similar move
	learnmove 1, LEER
	learnmove 7, FURY_SWIPES ; Fury Attack → similar move
	learnmove 9, AERIAL_ACE
	learnmove 13, KNOCK_OFF
	learnmove 15, RAZOR_LEAF ; Let's Go move
	learnmove 19, SLASH
	learnmove 21, KARATE_CHOP ; Air Cutter → new move
	learnmove 25, SWORDS_DANCE
	learnmove 31, AGILITY
	learnmove 33, NIGHT_SLASH
	learnmove 37, ACROBATICS
	learnmove 43, HI_JUMP_KICK ; Feint → new move
	learnmove 45, FALSE_SWIPE
	learnmove 49, AIR_SLASH
	learnmove 55, BRAVE_BIRD
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	evolution EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	learnmove 1, PECK
	learnmove 1, GROWL
	learnmove 5, QUICK_ATTACK
	learnmove 8, RAGE
	learnmove 12, FURY_SWIPES ; Fury Attack → similar move
	learnmove 15, PURSUIT
	learnmove 19, BATON_PASS ; Pluck → XD move
	learnmove 22, DOUBLE_KICK ; Double Hit → new move
	learnmove 26, AGILITY
	learnmove 29, DOUBLE_TEAM ; Uproar → TM move
	learnmove 33, TRI_ATTACK ; Acupressure → Crystal move
	learnmove 36, SWORDS_DANCE
	learnmove 40, HI_JUMP_KICK ; Jump Kick → similar move
	learnmove 43, DRILL_PECK
	learnmove 47, REVERSAL ; Endeavor → new move
	learnmove 50, THRASH
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TRI_ATTACK ; evolution move
	learnmove 1, PECK
	learnmove 1, GROWL
	learnmove 5, QUICK_ATTACK
	learnmove 9, RAGE
	learnmove 12, FURY_SWIPES ; Fury Attack → similar move
	learnmove 15, PURSUIT
	learnmove 19, BATON_PASS ; Pluck → XD move
	learnmove 22, DOUBLE_KICK ; Double Hit → new move
	learnmove 26, AGILITY
	learnmove 29, DOUBLE_TEAM ; Uproar → TM move
	learnmove 34, BULLDOZE ; Acupressure → TM move
	learnmove 38, SWORDS_DANCE
	learnmove 43, HI_JUMP_KICK ; Jump Kick → similar move
	learnmove 47, DRILL_PECK
	learnmove 52, REVERSAL ; Endeavor → new move
	learnmove 56, THRASH
	db 0 ; no more level-up moves

SeelEvosAttacks:
	evolution EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	learnmove 1, HEADBUTT
	learnmove 3, GROWL
	learnmove 7, WATER_GUN ; Water Sport → RBY TM move
	learnmove 11, ICY_WIND
	learnmove 13, ENCORE
	learnmove 17, ICE_SHARD
	learnmove 21, REST
	learnmove 23, SLEEP_TALK ; Aqua Ring → TM move
	learnmove 27, AURORA_BEAM
	learnmove 31, AQUA_JET
	learnmove 33, BUBBLEBEAM ; Brine → RBY TM move
	learnmove 37, TAKE_DOWN
	learnmove 41, PERISH_SONG ; Dive →  new move
	learnmove 43, AQUA_TAIL
	learnmove 47, ICE_BEAM
	learnmove 51, SAFEGUARD
	learnmove 53, HAIL
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, ICICLE_SPEAR ; Sheer Cold → egg move ; evolution move
	learnmove 1, HEADBUTT
	learnmove 3, GROWL
	learnmove 7, WATER_GUN ; Signal Beam → RBY TM move
	learnmove 11, ICY_WIND
	learnmove 13, ENCORE
	learnmove 17, ICE_SHARD
	learnmove 21, REST
	learnmove 23, SLEEP_TALK ; Aqua Ring → TM move
	learnmove 27, AURORA_BEAM
	learnmove 31, AQUA_JET
	learnmove 33, BUBBLEBEAM ; Brine → RBY TM move
	learnmove 39, TAKE_DOWN
	learnmove 45, PERISH_SONG ; Dive → new move
	learnmove 49, AQUA_TAIL
	learnmove 55, ICE_BEAM
	learnmove 61, SAFEGUARD
	learnmove 65, HAIL
	learnmove 69, MEGAHORN ; Let's Go move
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	evolution EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	learnmove 1, TACKLE ; Pound → similar move
	learnmove 1, ACID ; Poison Gas → new move
	learnmove 4, DEFENSE_CURL ; Harden → similar move
	learnmove 7, MUD_SLAP
	learnmove 12, DISABLE
	learnmove 15, VENOSHOCK ; Sludge → tutor move
	learnmove 18, HAZE ; Mud Bomb → egg move
	learnmove 21, MINIMIZE
	learnmove 26, FEINT_ATTACK ; Fling → new move
	learnmove 29, SLUDGE_BOMB
	learnmove 32, SCARY_FACE ; Sludge Wave → egg move
	learnmove 37, SCREECH
	learnmove 40, GUNK_SHOT
	learnmove 43, PAIN_SPLIT ; Acid Armor → HGSS tutor move
	learnmove 46, EXPLOSION ; Belch → TM move
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, MOONBLAST ; Let's Go move
	learnmove 1, TACKLE ; Pound → similar move
	learnmove 1, ACID ; Poison Gas → new move
	learnmove 4, DEFENSE_CURL ; Harden → similar move
	learnmove 7, MUD_SLAP
	learnmove 12, DISABLE
	learnmove 15, VENOSHOCK ; Sludge → tutor move
	learnmove 18, HAZE ; Mud Bomb → egg move
	learnmove 21, MINIMIZE
	learnmove 26, FEINT_ATTACK ; Fling → new move
	learnmove 29, SLUDGE_BOMB
	learnmove 32, SCARY_FACE ; Sludge Wave → egg move
	learnmove 37, SCREECH
	learnmove 40, GUNK_SHOT
	learnmove 46, PAIN_SPLIT ; Acid Armor → HGSS tutor move
	learnmove 52, EXPLOSION ; Belch → TM move
	db 0 ; no more level-up moves

Grimer_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

Muk_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	evolution EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 4, DEFENSE_CURL ; Withdraw → similar move
	learnmove 8, SUPERSONIC
	learnmove 13, ICICLE_SPEAR
	learnmove 16, PROTECT
	learnmove 20, LEER
	learnmove 25, ICE_SHARD
	learnmove 28, BUBBLEBEAM ; Clamp → egg move
	learnmove 32, SELFDESTRUCT ; Razor Shell → RBY TM move
	learnmove 37, AURORA_BEAM
	learnmove 40, WHIRLPOOL
	learnmove 44, EXPLOSION ; Brine → RBY TM move
	learnmove 49, BARRIER ; Iron Defense → egg move
	learnmove 52, ICE_BEAM
	learnmove 56, HYDRO_PUMP
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, HYDRO_PUMP
	learnmove 1, TOXIC_SPIKES
	learnmove 1, FURY_SWIPES ; Spike Cannon → similar move
	learnmove 1, TRI_ATTACK ; Shell Smash → RBY TM move
	learnmove 1, DEFENSE_CURL ; Withdraw → similar move
	learnmove 1, SUPERSONIC
	learnmove 1, PROTECT
	learnmove 1, AURORA_BEAM
	learnmove 1, SPIKES ; evolution move
	learnmove 28, ICICLE_SPEAR ; Spikes → Icicle Spear
	learnmove 50, ICICLE_CRASH
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	evolution EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	learnmove 1, HYPNOSIS
	learnmove 1, LICK
	learnmove 5, DISABLE ; Spite → egg move
	learnmove 8, MEAN_LOOK
	learnmove 12, CURSE
	learnmove 15, NIGHT_SHADE
	learnmove 19, CONFUSE_RAY
	learnmove 22, SUCKER_PUNCH
	learnmove 26, PAIN_SPLIT ; Payback → HGSS tutor move
	learnmove 29, SHADOW_BALL
	learnmove 33, DREAM_EATER
	learnmove 36, DARK_PULSE
	learnmove 40, DESTINY_BOND
	learnmove 43, HEX
	learnmove 47, PERISH_SONG ; Nightmare → new move
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	evolution EVOLVE_EVS, MON_SPD_EV, GENGAR
	db 0 ; no more evolutions
	learnmove 1, SHADOW_CLAW ; Shadow Punch → TM move ; evolution move
	learnmove 1, HYPNOSIS
	learnmove 1, LICK
	learnmove 5, DISABLE ; Spite → egg move
	learnmove 8, MEAN_LOOK
	learnmove 12, CURSE
	learnmove 15, NIGHT_SHADE
	learnmove 19, CONFUSE_RAY
	learnmove 22, SUCKER_PUNCH
	learnmove 28, PAIN_SPLIT ; Payback → HGSS tutor move
	learnmove 33, SHADOW_BALL
	learnmove 39, DREAM_EATER
	learnmove 44, DARK_PULSE
	learnmove 50, DESTINY_BOND
	learnmove 55, HEX
	learnmove 61, PERISH_SONG ; Nightmare → new move
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SHADOW_CLAW ; Shadow Punch → TM move ; evolution move
	learnmove 1, HYPNOSIS
	learnmove 1, LICK
	learnmove 5, DISABLE ; Spite → egg move
	learnmove 8, MEAN_LOOK
	learnmove 12, CURSE
	learnmove 15, NIGHT_SHADE
	learnmove 19, CONFUSE_RAY
	learnmove 22, SUCKER_PUNCH
	learnmove 28, PAIN_SPLIT ; Payback → HGSS tutor move
	learnmove 33, SHADOW_BALL
	learnmove 39, DREAM_EATER
	learnmove 44, DARK_PULSE
	learnmove 50, DESTINY_BOND
	learnmove 55, HEX
	learnmove 61, PERISH_SONG ; Nightmare → new move
	db 0 ; no more level-up moves

OnixEvosAttacks:
	evolution EVOLVE_HOLDING, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, DEFENSE_CURL ; Harden → similar move
	learnmove 1, WRAP ; Bind → similar move
	learnmove 4, CURSE
	learnmove 7, ROCK_THROW
	learnmove 10, RAGE
	learnmove 13, ROCK_BLAST ; Rock Tomb → egg move
	learnmove 16, BODY_SLAM ; Stealth Rock → TM move
	learnmove 19, SANDSTORM ; Rock Polish → Sandstorm
	learnmove 22, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnmove 25, DRAGONBREATH
	learnmove 28, HEADBUTT ; Slam → tutor move
	learnmove 31, SCREECH
	learnmove 34, ROCK_SLIDE
	learnmove 37, CRUNCH ; Sand Tomb → Steelix move
	learnmove 40, IRON_TAIL
	learnmove 43, DIG
	learnmove 46, STONE_EDGE
	learnmove 49, DOUBLE_EDGE
	learnmove 52, EARTHQUAKE ; Sandstorm → TM move
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	evolution EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	learnmove 1, TACKLE ; Pound → similar move
	learnmove 1, HYPNOSIS
	learnmove 5, DISABLE
	learnmove 9, CONFUSION
	learnmove 13, HEADBUTT
	learnmove 17, LOW_KICK ; Poison Gas → HGSS tutor move
	learnmove 21, CALM_MIND ; Meditate → TM move
	learnmove 25, PSYBEAM
	learnmove 29, TRI_ATTACK ; Wake-Up Slap → RBY TM move
	learnmove 33, BARRIER ; Psych Up → egg move
	learnmove 37, BELLY_DRUM ; Synchronoise → event move
	learnmove 41, ZEN_HEADBUTT
	learnmove 45, SWAGGER
	learnmove 49, PSYCHIC_M
	learnmove 53, NASTY_PLOT
	learnmove 57, TOXIC ; Psyshock → TM move
	learnmove 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE ; Pound → similar move
	learnmove 1, HYPNOSIS
	learnmove 5, DISABLE
	learnmove 9, CONFUSION
	learnmove 13, HEADBUTT
	learnmove 17, LOW_KICK ; Poison Gas → HGSS tutor move
	learnmove 21, CALM_MIND ; Meditate → TM move
	learnmove 25, PSYBEAM
	learnmove 29, TRI_ATTACK ; Wake-Up Slap → RBY TM move
	learnmove 33, BARRIER ; Psych Up → egg move
	learnmove 37, BELLY_DRUM ; Synchronoise → event move
	learnmove 41, ZEN_HEADBUTT
	learnmove 45, SWAGGER
	learnmove 49, PSYCHIC_M
	learnmove 53, NASTY_PLOT
	learnmove 57, TOXIC ; Psyshock → TM move
	learnmove 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	evolution EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	learnmove 1, AQUA_JET ; Bubble → new move
	learnmove 5, SCRATCH ; Vice Grip → new move
	learnmove 9, LEER
	learnmove 11, DEFENSE_CURL ; Harden → similar move
	learnmove 15, BUBBLEBEAM
	learnmove 19, DIG ; Mud Shot → egg move
	learnmove 21, METAL_CLAW
	learnmove 25, STOMP
	learnmove 29, PROTECT
	learnmove 31, X_SCISSOR ; Guillotine → TM move
	learnmove 35, CLOSE_COMBAT ; Slam → new move
	learnmove 39, CRABHAMMER ; Brine → Crabhammer
	learnmove 41, ANCIENTPOWER ; Crabhammer → HGSS tutor move
	learnmove 45, REVERSAL ; Flail → similar move
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, AQUA_JET ; Bubble → new move
	learnmove 5, SCRATCH ; Vice Grip → new move
	learnmove 9, LEER
	learnmove 11, DEFENSE_CURL ; Harden → similar move
	learnmove 15, BUBBLEBEAM
	learnmove 19, DIG ; Mud Shot → egg move
	learnmove 21, METAL_CLAW
	learnmove 25, STOMP
	learnmove 32, PROTECT
	learnmove 37, X_SCISSOR ; Guillotine → TM move
	learnmove 44, CLOSE_COMBAT ; Slam → new move
	learnmove 51, CRABHAMMER ; Brine → Crabhammer
	learnmove 56, ANCIENTPOWER ; Crabhammer → HGSS tutor move
	learnmove 63, REVERSAL ; Flail → new move
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	evolution EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, THUNDERSHOCK ; Let's Go move
	learnmove 4, SONICBOOM
	learnmove 6, AGILITY ; Eerie Impulse → event move
	learnmove 9, SPARK
	learnmove 11, ROLLOUT
	learnmove 13, SCREECH
	learnmove 16, THUNDER_WAVE ; Charge Beam → TM move
	learnmove 20, SWIFT
	learnmove 22, THUNDERBOLT ; Electro Ball → TM move
	learnmove 26, SELFDESTRUCT
	learnmove 29, LIGHT_SCREEN
	learnmove 34, REFLECT ; Magnet Rise → TM move
	learnmove 37, THUNDER ; Discharge → TM move
	learnmove 41, EXPLOSION
	learnmove 46, GYRO_BALL
	learnmove 48, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, THUNDERSHOCK ; Let's Go move
	learnmove 4, SONICBOOM
	learnmove 6, AGILITY ; Eerie Impulse → event move
	learnmove 9, SPARK
	learnmove 11, ROLLOUT
	learnmove 13, SCREECH
	learnmove 16, THUNDER_WAVE ; Charge Beam → TM move
	learnmove 20, SWIFT
	learnmove 22, THUNDERBOLT ; Electro Ball → TM move
	learnmove 26, SELFDESTRUCT
	learnmove 29, LIGHT_SCREEN
	learnmove 36, REFLECT ; Magnet Rise → TM move
	learnmove 41, THUNDER ; Discharge → TM move
	learnmove 47, EXPLOSION
	learnmove 54, GYRO_BALL
	learnmove 58, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	evolution EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	learnmove 1, TACKLE ; Barrage → new move
	learnmove 1, HYPNOSIS
	learnmove 7, REFLECT
	learnmove 11, LEECH_SEED
	learnmove 14, CONFUSION
	learnmove 17, SELFDESTRUCT ; Bullet Seed → RBY TM move
	learnmove 19, STUN_SPORE
	learnmove 21, POISONPOWDER
	learnmove 23, SLEEP_POWDER
	learnmove 27, PSYBEAM ; Confusion → Let's Go move
	learnmove 33, ANCIENTPOWER ; Worry Seed → HGSS tutor move
	learnmove 43, SOLAR_BEAM
	learnmove 47, EXTRASENSORY
	learnmove 50, PSYCHIC_M ; Bestow → TM move
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE ; Barrage → new move
	learnmove 1, HYPNOSIS
	learnmove 1, CONFUSION
	learnmove 1, STOMP ; evolution move
	learnmove 17, LOW_KICK ; Psyshock → HGSS tutor move
	learnmove 27, ZEN_HEADBUTT ; Egg Bomb → tutor move
	learnmove 37, POWER_WHIP ; Wood Hammer → new move
	learnmove 47, PETAL_DANCE ; Leaf Storm → new move
	db 0 ; no more level-up moves

Exeggutor_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	evolution EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 3, TACKLE ; Tail Whip → new move
	learnmove 7, MUD_SLAP ; Bone Club → TM move
	learnmove 11, HEADBUTT
	learnmove 13, LEER
	learnmove 17, FOCUS_ENERGY
	learnmove 21, BONEMERANG
	learnmove 23, RAGE
	learnmove 27, LOW_KICK ; False Swipe → HGSS tutor move
	learnmove 31, FALSE_SWIPE ; Thrash → False Swipe
	learnmove 33, THRASH ; Fling → Thrash
	learnmove 37, MAGNITUDE ; Stomping Tantrum → new move
	learnmove 41, ROCK_SMASH ; Endeavor → TM move
	learnmove 43, DOUBLE_EDGE
	learnmove 47, OUTRAGE ; Bone Rush → HGSS tutor move
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, PAIN_SPLIT ; evolution move
	learnmove 1, GROWL
	learnmove 3, TACKLE ; Tail Whip → new move
	learnmove 7, MUD_SLAP ; Bone Club → TM move
	learnmove 11, HEADBUTT
	learnmove 13, LEER
	learnmove 17, FOCUS_ENERGY
	learnmove 21, BONEMERANG
	learnmove 23, RAGE
	learnmove 27, LOW_KICK ; False Swipe → HGSS tutor move
	learnmove 33, SHADOW_CLAW ; Thrash → TM move
	learnmove 37, THRASH ; Fling → Thrash
	learnmove 43, MAGNITUDE ; Stomping Tantrum → new move
	learnmove 49, ROCK_SMASH ; Endeavor → TM move
	learnmove 53, DOUBLE_EDGE
	learnmove 59, OUTRAGE ; Bone Rush → HGSS tutor move
	db 0 ; no more level-up moves

Marowak_AlolaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DOUBLE_KICK ; evolution move
	learnmove 1, BULK_UP ; Revenge → TM move
	learnmove 5, AGILITY ; Meditate → new move
	learnmove 9, PURSUIT ; Rolling Kick → egg move
	learnmove 13, LOW_KICK ; Jump Kick → HGSS tutor move
	learnmove 17, STOMP ; Brick Break → new move
	learnmove 21, ENDURE ; Focus Energy → TM move
	learnmove 25, AERIAL_ACE ; Feint → new move
	learnmove 29, HI_JUMP_KICK
	learnmove 33, DOUBLE_TEAM ; Mind Reader → TM move
	learnmove 37, FORESIGHT
	learnmove 41, FOCUS_ENERGY ; Wide Guard → Let's Go move
	learnmove 45, REVERSAL ; Blaze Kick → Reversal
	learnmove 49, ENDURE
	learnmove 53, FOCUS_BLAST ; Mega Kick → TM move
	learnmove 57, CLOSE_COMBAT
	learnmove 61, COUNTER ; Reversal → TM move
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DIZZY_PUNCH ; Comet Punch → Dizzy Punch ; evolution move
	learnmove 1, BULK_UP ; Revenge → TM move
	learnmove 6, AGILITY
	learnmove 11, PURSUIT
	learnmove 13, MACH_PUNCH
	learnmove 17, BULLET_PUNCH
	learnmove 21, AERIAL_ACE ; Feint → new move
	learnmove 26, SEISMIC_TOSS ; Vacuum Wave → RBY TM move
	learnmove 31, FORESIGHT ; Quick Guard → new move
	learnmove 36, THUNDERPUNCH
	learnmove 36, ICE_PUNCH
	learnmove 36, FIRE_PUNCH
	learnmove 41, FOCUS_ENERGY ; Sky Uppercut → Let's Go move
	learnmove 46, DYNAMICPUNCH ; Mega Punch → TM move
	learnmove 51, PROTECT ; Detect → TM move
	learnmove 56, FOCUS_BLAST ; Focus Punch → TM move
	learnmove 61, COUNTER
	learnmove 66, CLOSE_COMBAT
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

LickilickyEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	evolution EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 4, ACID ; Smog → new move
	learnmove 7, SMOKESCREEN
	learnmove 12, ENDURE ; Assurance → TM move
	learnmove 15, WILL_O_WISP ; Clear Smog → TM move
	learnmove 18, VENOSHOCK ; Sludge → tutor move
	learnmove 23, SELFDESTRUCT
	learnmove 26, HAZE
	learnmove 29, GYRO_BALL
	learnmove 34, SLUDGE_BOMB
	learnmove 37, EXPLOSION
	learnmove 40, DESTINY_BOND
	learnmove 42, PAIN_SPLIT ; Belch → HGSS tutor move
	learnmove 45, FIRE_BLAST ; Memento → TM move
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 4, ACID ; Smog → new move
	learnmove 7, SMOKESCREEN
	learnmove 12, ENDURE ; Assurance → TM move
	learnmove 15, WILL_O_WISP ; Clear Smog → TM move
	learnmove 18, VENOSHOCK ; Sludge → tutor move
	learnmove 23, SELFDESTRUCT
	learnmove 26, HAZE
	learnmove 29, GYRO_BALL
	learnmove 34, SLUDGE_BOMB
	learnmove 40, EXPLOSION
	learnmove 46, DESTINY_BOND
	learnmove 51, PAIN_SPLIT ; Belch → HGSS tutor move
	learnmove 57, FIRE_BLAST ; Memento → TM move
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	evolution EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, MUD_SLAP ; Sand-Attack → similar move
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 3, HORN_ATTACK
	learnmove 6, FURY_SWIPES ; Fury Attack → similar move
	learnmove 9, SCARY_FACE
	learnmove 13, MAGNITUDE ; Smack Down → egg move
	learnmove 17, STOMP
	learnmove 21, BULLDOZE
	learnmove 25, ANCIENTPOWER ; Chip Away → HGSS tutor move
	learnmove 29, ROCK_BLAST
	learnmove 33, DOUBLE_EDGE ; Drill Run → event move
	learnmove 37, TAKE_DOWN
	learnmove 41, STONE_EDGE
	learnmove 45, EARTHQUAKE
	learnmove 49, CLOSE_COMBAT ; Megahorn → new move
	learnmove 53, MEGAHORN ; Horn Drill → Megahorn
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	;evolution EVOLVE_HOLDING, PROTECTOR, RHYPERIOR
	db 0 ; no more evolutions
	learnmove 1, OUTRAGE ; Hammer Arm → HGSS tutor move ; evolution move
	learnmove 1, TACKLE
	learnmove 1, MUD_SLAP ; Sand-Attack → similar move
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 3, HORN_ATTACK
	learnmove 6, FURY_SWIPES ; Fury Attack → similar move
	learnmove 9, SCARY_FACE
	learnmove 13, MAGNITUDE ; Smack Down → egg move
	learnmove 17, STOMP
	learnmove 21, BULLDOZE
	learnmove 25, ANCIENTPOWER ; Chip Away → HGSS tutor move
	learnmove 29, ROCK_BLAST
	learnmove 33, DOUBLE_EDGE ; Drill Run → event move
	learnmove 37, TAKE_DOWN
	learnmove 41, STONE_EDGE
	learnmove 48, EARTHQUAKE
	learnmove 55, CLOSE_COMBAT ; Megahorn → new move
	learnmove 62, MEGAHORN ; Horn Drill → Megahorn
	db 0 ; no more level-up moves

RhyperiorEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, OUTRAGE ; Hammer Arm → HGSS tutor move ; evolution move
	learnmove 1, POISON_JAB
	learnmove 1, TACKLE
	learnmove 1, MUD_SLAP ; Sand-Attack → similar move
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 3, HORN_ATTACK
	learnmove 6, FURY_SWIPES ; Fury Attack → similar move
	learnmove 9, SCARY_FACE
	learnmove 13, MAGNITUDE ; Smack Down → egg move
	learnmove 17, STOMP
	learnmove 21, BULLDOZE
	learnmove 25, ANCIENTPOWER ; Chip Away → HGSS tutor move
	learnmove 29, ROCK_BLAST
	learnmove 33, DOUBLE_EDGE ; Drill Run → event move
	learnmove 37, TAKE_DOWN
	learnmove 41, STONE_EDGE
	learnmove 48, EARTHQUAKE
	learnmove 55, CLOSE_COMBAT ; Megahorn → new move
	learnmove 62, MEGAHORN ; Horn Drill → Megahorn
	learnmove 69, ROCK_SLIDE ; Rock Wrecker → similar move
	db 0 ; no more level-up moves

HappinyEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	evolution EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	learnmove 1, DEFENSE_CURL
	learnmove 1, TACKLE ; Pound → similar move
	learnmove 1, GROWL
	learnmove 5, LEER ; Tail Whip → similar move
	learnmove 9, SWEET_KISS ; Refresh → Happiny move
	learnmove 12, DOUBLE_SLAP
	learnmove 16, SOFTBOILED
	learnmove 20, METRONOME ; Bestow → egg move
	learnmove 23, MINIMIZE
	learnmove 27, TAKE_DOWN
	learnmove 31, SING
	learnmove 35, CHARM ; Fling → Happiny move
	learnmove 39, HEAL_BELL ; Heal Pulse → HGSS tutor move
	learnmove 44, BODY_SLAM ; Egg Bomb → TM move
	learnmove 50, LIGHT_SCREEN
	learnmove 57, SUBSTITUTE ; Healing Wish → TM move
	learnmove 65, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	evolution EVOLVE_MOVE, ANCIENTPOWER, TANGROWTH
	db 0 ; no more evolutions
	learnmove 1, WRAP ; Constrict → similar move
	learnmove 4, SLEEP_POWDER
	learnmove 7, VINE_WHIP
	learnmove 10, ABSORB
	learnmove 14, POISONPOWDER
	learnmove 17, PROTECT ; Bind → TM move
	learnmove 20, GROWTH
	learnmove 23, MEGA_DRAIN
	learnmove 27, KNOCK_OFF
	learnmove 30, STUN_SPORE
	learnmove 36, GIGA_DRAIN
	learnmove 38, ANCIENTPOWER
	learnmove 41, BODY_SLAM ; Slam → similar move
	learnmove 44, PAIN_SPLIT ; Tickle → HGSS tutor move
	learnmove 46, SWORDS_DANCE ; Wring Out → TM move
	learnmove 48, BATON_PASS ; Grassy Terrain → new move
	learnmove 50, POWER_WHIP
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, WRAP ; Constrict → similar move
	learnmove 4, SLEEP_POWDER
	learnmove 7, VINE_WHIP
	learnmove 10, ABSORB
	learnmove 14, POISONPOWDER
	learnmove 17, PROTECT ; Bind → TM move
	learnmove 20, GROWTH
	learnmove 23, MEGA_DRAIN
	learnmove 27, KNOCK_OFF
	learnmove 30, STUN_SPORE
	learnmove 36, GIGA_DRAIN
	learnmove 40, ANCIENTPOWER
	learnmove 43, BODY_SLAM ; Slam → similar move
	learnmove 46, PAIN_SPLIT ; Tickle → HGSS tutor move
	learnmove 49, SWORDS_DANCE ; Wring Out → TM move
	learnmove 50, BATON_PASS ; Grassy Terrain → new move
	learnmove 53, POWER_WHIP
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DIZZY_PUNCH ; Comet Punch → Dizzy Punch
	learnmove 1, LEER
	learnmove 7, LOW_KICK ; Fake Out → HGSS tutor move
	learnmove 10, BITE ; Tail Whip → Bite
	learnmove 13, HEADBUTT ; Bite → tutor move
	learnmove 19, DOUBLE_KICK ; Double Hit → new move
	learnmove 22, RAGE
	learnmove 25, TAKE_DOWN ; Mega Punch → RBY TM move
	learnmove 31, STOMP ; Chip Away → egg move
	learnmove 34, MACH_PUNCH ; Dizzy Punch → new move
	learnmove 37, CRUNCH
	learnmove 43, ENDURE
	learnmove 46, OUTRAGE
	learnmove 49, SUCKER_PUNCH
	learnmove 50, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	evolution EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	learnmove 1, WATER_GUN ; Bubble → similar move
	learnmove 5, SMOKESCREEN
	learnmove 9, LEER
	learnmove 13, BUBBLEBEAM ; Water Gun → Bubble Beam
	learnmove 17, AQUA_JET ; Twister → new move
	learnmove 21, WATER_PULSE ; Bubble Beam → TM move
	learnmove 26, FOCUS_ENERGY
	learnmove 31, OUTRAGE ; Brine → HGSS tutor move
	learnmove 36, AGILITY
	learnmove 41, DRAGON_PULSE
	learnmove 46, DRAGON_DANCE
	learnmove 52, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	evolution EVOLVE_HOLDING, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	learnmove 1, WATER_GUN ; Bubble → similar move
	learnmove 5, SMOKESCREEN
	learnmove 9, LEER
	learnmove 13, BUBBLEBEAM ; Water Gun → Bubble Beam
	learnmove 17, AQUA_JET ; Twister → new move
	learnmove 21, WATER_PULSE ; Bubble Beam → TM move
	learnmove 26, FOCUS_ENERGY
	learnmove 31, OUTRAGE ; Brine → HGSS tutor move
	learnmove 38, AGILITY
	learnmove 45, DRAGON_PULSE
	learnmove 52, DRAGON_DANCE
	learnmove 60, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	evolution EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, DEFENSE_CURL ; Harden → similar move
	learnmove 4, WATER_GUN
	learnmove 7, RAPID_SPIN
	learnmove 10, RECOVER
	learnmove 13, HYPNOSIS ; Psywave → new move
	learnmove 16, SWIFT
	learnmove 18, BUBBLEBEAM
	learnmove 22, AGILITY ; Camouflage → new move
	learnmove 24, GYRO_BALL
	learnmove 28, PAIN_SPLIT ; Brine → HGSS tutor move
	learnmove 31, MINIMIZE
	learnmove 35, REFLECT ; Reflect Type → new move
	learnmove 37, POWER_GEM
	learnmove 40, CONFUSE_RAY
	learnmove 42, PSYCHIC_M
	learnmove 46, LIGHT_SCREEN
	learnmove 49, HYDRO_PUMP ; Cosmic Power → Hydro Pump
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, HYDRO_PUMP
	learnmove 1, WATER_GUN
	learnmove 1, RAPID_SPIN
	learnmove 1, RECOVER
	learnmove 1, SWIFT
	learnmove 40, CONFUSE_RAY
	learnmove 60, TRI_ATTACK ; RBY TM move
	db 0 ; no more level-up moves

Mime_JrEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

Mr_MimeEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, BARRIER
	learnmove 1, CONFUSION
	learnmove 4, HYPNOSIS ; Copycat → egg move
	learnmove 8, CALM_MIND ; Meditate → TM move
	learnmove 11, DOUBLE_SLAP
	learnmove 13, PROTECT ; Mimic → event move
	learnmove 15, METRONOME ; Psywave → RBY TM move
	learnmove 18, ENCORE
	learnmove 22, LIGHT_SCREEN
	learnmove 22, REFLECT
	learnmove 25, PSYBEAM
	learnmove 29, SUBSTITUTE
	learnmove 32, CONFUSE_RAY ; Recycle → egg move
	learnmove 36, TRICK
	learnmove 39, PSYCHIC_M
	learnmove 43, FUTURE_SIGHT ; Role Play → egg move
	learnmove 46, BATON_PASS
	learnmove 50, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	evolution EVOLVE_HOLDING, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	learnmove 1, QUICK_ATTACK
	learnmove 1, LEER
	learnmove 5, FOCUS_ENERGY
	learnmove 9, PURSUIT
	learnmove 13, FALSE_SWIPE
	learnmove 17, AGILITY
	learnmove 21, WING_ATTACK
	learnmove 25, BUG_BITE ; Fury Cutter → similar move
	learnmove 29, SLASH
	learnmove 33, GLARE ; Razor Wind → new move
	learnmove 37, DOUBLE_TEAM
	learnmove 41, X_SCISSOR
	learnmove 45, NIGHT_SLASH
	learnmove 49, BATON_PASS ; Double Hit → egg move
	learnmove 50, AIR_SLASH
	learnmove 57, SWORDS_DANCE
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, PETAL_DANCE ; event move
	learnmove 1, TACKLE ; Pound → similar move
	learnmove 1, LICK
	learnmove 1, CONFUSION ; Smoochum move
	learnmove 1, SWEET_KISS ; Smoochum move
	learnmove 5, SING ; Lovely Kiss → Smoochum move
	learnmove 8, SCREECH ; Lovely Kiss → Let's Go move
	learnmove 11, ICY_WIND ; Powder Snow → TM move
	learnmove 15, DOUBLE_SLAP
	learnmove 18, ICE_PUNCH
	learnmove 21, METRONOME ; Heart Stamp → RBY TM move
	learnmove 25, MEAN_LOOK
	learnmove 28, DRAINING_KISS ; Fake Tears → Drain Kiss
	learnmove 33, PSYBEAM ; Wake-Up Slap → new move
	learnmove 39, AVALANCHE
	learnmove 44, BODY_SLAM
	learnmove 49, NASTY_PLOT ; Wring Out → egg move
	learnmove 55, PERISH_SONG
	learnmove 60, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	;evolution EVOLVE_HOLDING, ELECTIRIZER, ELECTIVIRE
	db 0 ; no more evolutions
	learnmove 1, QUICK_ATTACK
	learnmove 1, LEER
	learnmove 5, THUNDERSHOCK
	learnmove 8, LOW_KICK
	learnmove 12, SWIFT
	learnmove 15, BULK_UP ; Shock Wave → TM move
	learnmove 19, THUNDER_WAVE
	learnmove 22, KARATE_CHOP ; Electro Ball → egg move
	learnmove 26, LIGHT_SCREEN
	learnmove 29, THUNDERPUNCH
	learnmove 36, SCREECH ; Discharge → Screech
	learnmove 42, CROSS_CHOP ; Screech → new move
	learnmove 49, THUNDERBOLT
	learnmove 55, THUNDER
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, CLOSE_COMBAT ; evolution move
	learnmove 1, FIRE_PUNCH
	learnmove 1, QUICK_ATTACK
	learnmove 1, LEER
	learnmove 5, THUNDERSHOCK
	learnmove 8, LOW_KICK
	learnmove 12, SWIFT
	learnmove 15, BULK_UP ; Shock Wave → TM move
	learnmove 19, THUNDER_WAVE
	learnmove 22, KARATE_CHOP ; Electro Ball → egg move
	learnmove 26, LIGHT_SCREEN
	learnmove 29, THUNDERPUNCH
	learnmove 36, SCREECH ; Discharge → Screech
	learnmove 42, CROSS_CHOP ; Screech → new move
	learnmove 49, THUNDERBOLT
	learnmove 55, THUNDER
	learnmove 62, GIGA_IMPACT
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	;evolution EVOLVE_HOLDING, MAGMARIZER, MAGMORTAR
	db 0 ; no more evolutions
	learnmove 1, HAZE ; Smog → new move
	learnmove 1, LEER
	learnmove 5, EMBER
	learnmove 8, SMOKESCREEN
	learnmove 12, FEINT_ATTACK
	learnmove 15, FIRE_SPIN
	learnmove 19, LOW_KICK ; Clear Smog → HGSS tutor move
	learnmove 22, FLAME_WHEEL ; Flame Burst → new move
	learnmove 26, CONFUSE_RAY
	learnmove 29, FIRE_PUNCH
	learnmove 36, SUNNY_DAY ; Lava Plume → Sunny Day
	learnmove 42, FOCUS_BLAST ; Sunny Day → TM move
	learnmove 49, FLAMETHROWER
	learnmove 55, FIRE_BLAST
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, FLASH_CANNON ; evolution move
	learnmove 1, THUNDERPUNCH
	learnmove 1, HAZE ; Smog → new move
	learnmove 1, LEER
	learnmove 5, EMBER
	learnmove 8, SMOKESCREEN
	learnmove 12, FEINT_ATTACK
	learnmove 15, FIRE_SPIN
	learnmove 19, LOW_KICK ; Clear Smog → HGSS tutor move
	learnmove 22, FLAME_WHEEL ; Flame Burst → new move
	learnmove 26, CONFUSE_RAY
	learnmove 29, FIRE_PUNCH
	learnmove 36, SUNNY_DAY ; Lava Plume → Sunny Day
	learnmove 42, FOCUS_BLAST ; Sunny Day → TM move
	learnmove 49, FLAMETHROWER
	learnmove 55, FIRE_BLAST
	learnmove 62, HYPER_BEAM
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, FURY_SWIPES ; Vice Grip → new move
	learnmove 1, FOCUS_ENERGY
	learnmove 4, WRAP ; Bind → similar move
	learnmove 8, SEISMIC_TOSS
	learnmove 12, DEFENSE_CURL ; Harden → similar move
	learnmove 16, RAGE ; Revenge → RBY TM move
	learnmove 20, ROCK_THROW ; Brick Break → event move
	learnmove 26, ROCK_SMASH ; Vital Throw → TM move
	learnmove 29, X_SCISSOR
	learnmove 33, FEINT_ATTACK ; Submission → egg moves
	learnmove 36, OUTRAGE ; Storm Throw → Let's Go move
	learnmove 40, SWORDS_DANCE
	learnmove 43, THRASH
	learnmove 47, CLOSE_COMBAT ; Superpower → similar move
	learnmove 50, MEGAHORN ; Guillotine → new move
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 3, LEER ; Tail Whip → similar move
	learnmove 5, RAGE
	learnmove 8, HORN_ATTACK
	learnmove 11, SCARY_FACE
	learnmove 15, PURSUIT
	learnmove 19, REST
	learnmove 24, QUICK_ATTACK ; Payback → event move
	learnmove 29, FOCUS_ENERGY ; Work Up → Let's Go move
	learnmove 35, TAKE_DOWN
	learnmove 41, ZEN_HEADBUTT
	learnmove 48, SWAGGER
	learnmove 55, THRASH
	learnmove 63, DOUBLE_EDGE
	learnmove 71, GIGA_IMPACT
	learnmove 80, OUTRAGE ; HGSS tutor move
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	evolution EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	learnmove 1, SPLASH
	learnmove 15, TACKLE
	learnmove 30, REVERSAL ; Flail → event move
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, WATERFALL ; HM move
	learnmove 1, BITE ; evolution move
	learnmove 1, THRASH
	learnmove 1, DRAGON_RAGE
	learnmove 1, WRAP ; Bind → similar move
	learnmove 21, LEER
	learnmove 24, GUST ; Twister → new move
	learnmove 27, DRAGON_RAGE ; Ice Fang → Dragon Rage
	learnmove 30, AQUA_TAIL
	learnmove 33, SCARY_FACE
	learnmove 36, DRAGONBREATH ; Dragon Rage → GSC TM move
	learnmove 39, CRUNCH
	learnmove 42, HYDRO_PUMP
	learnmove 45, DRAGON_DANCE
	learnmove 48, HURRICANE
	learnmove 51, RAIN_DANCE
	learnmove 54, HYPER_BEAM
	learnmove 57, OUTRAGE ; HGSS tutor move
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, ANCIENTPOWER ; HGSS tutor move
	learnmove 1, DRAGON_RAGE ; RBY TM move
	learnmove 1, DRAGONBREATH ; GSC TM move
	learnmove 1, SING
	learnmove 1, GROWL
	learnmove 1, WATER_GUN
	learnmove 4, BITE ; Mist → event move
	learnmove 7, CONFUSE_RAY
	learnmove 10, ICE_SHARD
	learnmove 14, WATER_PULSE
	learnmove 18, BODY_SLAM
	learnmove 22, RAIN_DANCE
	learnmove 27, PERISH_SONG
	learnmove 32, ICE_BEAM
	learnmove 37, FUTURE_SIGHT ; Brine → event move
	learnmove 43, SAFEGUARD
	learnmove 47, HYDRO_PUMP
	learnmove 50, OUTRAGE ; Sheer Cold → HGSS tutor move
	learnmove 54, MEGAHORN ; Let's Go TM move
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	evolution EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	evolution EVOLVE_ITEM, WATER_STONE, VAPOREON
	evolution EVOLVE_ITEM, FIRE_STONE, FLAREON
	evolution EVOLVE_ITEM, SHINY_STONE, SYLVEON
	;evolution EVOLVE_LOCATION, ILEX_FOREST, LEAFEON
	;evolution EVOLVE_LOCATION, ICE_PATH, GLACEON
	evolution EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	evolution EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, TACKLE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 5, MUD_SLAP ; Sand Attack → similar move
	learnmove 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	learnmove 10, SWIFT
	learnmove 13, QUICK_ATTACK
	learnmove 17, BITE
	learnmove 20, HEAL_BELL ; Refresh → HGSS tutor move
	learnmove 23, THIEF ; Covet → TM move
	learnmove 25, TAKE_DOWN
	learnmove 29, CHARM
	learnmove 33, BATON_PASS
	learnmove 37, DOUBLE_EDGE
	learnmove 41, GROWTH ; Last Resort → event move
	learnmove 45, REVERSAL ; Trump Card → new move
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, TACKLE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, WATER_GUN ; evolution move
	learnmove 5, MUD_SLAP ; Sand Attack → similar move
	learnmove 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	learnmove 13, QUICK_ATTACK
	learnmove 17, WATER_PULSE
	learnmove 20, AURORA_BEAM
	learnmove 25, RECOVER ; Aqua Ring → similar move
	learnmove 29, BARRIER ; Acid Armor → similar move
	learnmove 33, HAZE
	learnmove 37, SCALD ; Muddy Water → TM move
	learnmove 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnmove 45, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, TACKLE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, THUNDERSHOCK ; evolution move
	learnmove 5, MUD_SLAP ; Sand Attack → similar move
	learnmove 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	learnmove 13, QUICK_ATTACK
	learnmove 17, DOUBLE_KICK
	learnmove 20, LIGHT_SCREEN ; Thunder Fang → TM move
	learnmove 25, PIN_MISSILE
	learnmove 29, AGILITY
	learnmove 33, THUNDER_WAVE
	learnmove 37, THUNDERBOLT ; Discharge → TM move
	learnmove 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnmove 45, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, TACKLE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, EMBER ; evolution move
	learnmove 5, MUD_SLAP ; Sand Attack → similar move
	learnmove 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	learnmove 13, QUICK_ATTACK
	learnmove 17, BITE
	learnmove 20, FLAME_WHEEL ; Fire Fang → new move
	learnmove 25, FIRE_SPIN
	learnmove 29, SCARY_FACE
	learnmove 33, SMOKESCREEN ; Smog → new move
	learnmove 37, FLAMETHROWER ; Lava Plume → new move
	learnmove 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnmove 45, FLARE_BLITZ
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, TACKLE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, RAZOR_LEAF ; evolution move
	learnmove 5, MUD_SLAP ; Sand Attack → similar move
	learnmove 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	learnmove 13, QUICK_ATTACK
	learnmove 17, BITE ; Grass Whistle → new move
	learnmove 20, ENERGY_BALL ; Magical Leaf → TM move
	learnmove 25, GIGA_DRAIN
	learnmove 29, SWORDS_DANCE
	learnmove 37, SEED_BOMB ; Sunny Day → tutor move
	learnmove 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnmove 45, SUNNY_DAY ; Leaf Blade → Sunny Day
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, TACKLE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, ICY_WIND ; evolution move
	learnmove 5, MUD_SLAP ; Sand Attack → similar move
	learnmove 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	learnmove 13, QUICK_ATTACK
	learnmove 17, BITE
	learnmove 20, ICE_SHARD ; Ice Fang → Ice Shard
	learnmove 25, HAIL ; Ice Shard → Hail
	learnmove 29, BARRIER
	learnmove 33, MIRROR_COAT
	learnmove 37, ICE_BEAM ; Hail → TM move
	learnmove 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnmove 45, BLIZZARD
	db 0 ; no more level-up moves

SylveonEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, TACKLE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, DISARMING_VOICE ; evolution move
	learnmove 5, MUD_SLAP ; Sand Attack → similar move
	learnmove 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	learnmove 13, QUICK_ATTACK
	learnmove 17, SWIFT
	learnmove 20, DRAINING_KISS
	learnmove 25, SKILL_SWAP
	learnmove 29, HEAL_BELL ; Misty Terrain → HGSS tutor move
	learnmove 33, LIGHT_SCREEN
	learnmove 37, MOONBLAST
	learnmove 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnmove 45, PLAY_ROUGH ; Psych Up → new move
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	evolution EVOLVE_HOLDING, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, CONVERSION
	learnmove 1, TELEPORT ; Sharpen → RBY TM move
	learnmove 7, PSYBEAM
	learnmove 12, AGILITY
	learnmove 18, RECOVER
	learnmove 23, GROWTH ; Magnet Rise → new move
	learnmove 29, ICE_BEAM ; Signal Beam → TM move
	learnmove 34, BARRIER ; Recycle → event move
	learnmove 40, THUNDERBOLT ; Discharge → TM move
	learnmove 45, MIRROR_COAT ; Lock-On → new move
	learnmove 50, TRI_ATTACK
	learnmove 56, MIRROR_COAT ; Magic Coat → new move
	learnmove 62, ZAP_CANNON
	db 0 ; no more level-up moves

PorygonZEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, CONVERSION
	learnmove 1, NASTY_PLOT ; evolution move
	learnmove 7, PSYBEAM
	learnmove 12, AGILITY
	learnmove 18, RECOVER
	learnmove 23, GROWTH ; Magnet Rise → new move
	learnmove 29, ICE_BEAM ; Signal Beam → TM move
	learnmove 34, PAIN_SPLIT ; Embargo → HGSS tutor move
	learnmove 40, THUNDERBOLT ; Discharge → TM move
	learnmove 45, MIRROR_COAT ; Lock-On → new move
	learnmove 50, TRI_ATTACK
	learnmove 56, MIRROR_COAT ; Magic Coat → new move
	learnmove 62, ZAP_CANNON
	learnmove 67, HYPER_BEAM
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	evolution EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	learnmove 1, WRAP ; Constrict → similar move
	learnmove 1, DEFENSE_CURL ; Withdraw → similar move
	learnmove 7, BITE
	learnmove 10, WATER_GUN
	learnmove 16, ROCK_THROW ; Rollout → event move
	learnmove 19, LEER
	learnmove 25, ROLLOUT ; Mud Shot → Rollout
	learnmove 28, BUBBLEBEAM ; Brine → egg move
	learnmove 34, PROTECT
	learnmove 37, ANCIENTPOWER
	learnmove 43, AURORA_BEAM ; Tickle → egg move
	learnmove 46, ROCK_BLAST
	learnmove 50, POWER_GEM ; Shell Smash → new move
	learnmove 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, WRAP ; Constrict → similar move
	learnmove 1, DEFENSE_CURL ; Withdraw → similar move
	learnmove 1, ICICLE_SPEAR ; Spike Cannon → new move ; evolution move
	learnmove 7, BITE
	learnmove 10, WATER_GUN
	learnmove 16, ROCK_THROW ; Rollout → event move
	learnmove 19, LEER
	learnmove 25, ROLLOUT ; Mud Shot → Rollout
	learnmove 28, BUBBLEBEAM ; Brine → egg move
	learnmove 34, PROTECT
	learnmove 37, ANCIENTPOWER
	learnmove 48, SPIKES ; Tickle → new move
	learnmove 56, ROCK_BLAST
	learnmove 67, POWER_GEM ; Shell Smash → new move
	learnmove 75, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	evolution EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, DEFENSE_CURL ; Harden → similar move
	learnmove 6, ABSORB
	learnmove 11, MUD_SLAP ; Leer → GSC TM move
	learnmove 16, ROCK_THROW ; Mud Shot → Rock Throw (event move)
	learnmove 21, LEER ; Sand Attack → Leer
	learnmove 26, ENDURE
	learnmove 31, AQUA_JET
	learnmove 36, MEGA_DRAIN
	learnmove 41, SCREECH ; Metal Sound → similar move
	learnmove 46, ANCIENTPOWER
	learnmove 51, GIGA_DRAIN ; Wring Out → TM move
	learnmove 56, IRON_HEAD ; new move
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, DEFENSE_CURL ; Harden → similar move
	learnmove 1, SLASH ; evolution move
	learnmove 6, ABSORB
	learnmove 11, MUD_SLAP ; Leer → GSC TM move
	learnmove 16, ROCK_THROW ; Mud Shot → Rock Throw (event move)
	learnmove 21, LEER ; Sand Attack → Leer
	learnmove 26, ENDURE
	learnmove 31, AQUA_JET
	learnmove 36, MEGA_DRAIN
	learnmove 45, SCREECH ; Metal Sound → similar move
	learnmove 54, ANCIENTPOWER
	learnmove 63, LOW_KICK ; Wring Out → HGSS tutor move
	learnmove 72, NIGHT_SLASH
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DRAGON_RAGE ; RBY TM move
	learnmove 1, DRAGONBREATH ; GSC TM move
	learnmove 1, WING_ATTACK
	learnmove 1, SUPERSONIC
	learnmove 1, BITE
	learnmove 1, SCARY_FACE
	learnmove 9, ROAR
	learnmove 13, ROCK_THROW ; Let's Go move
	learnmove 17, AGILITY
	learnmove 25, ANCIENTPOWER
	learnmove 33, CRUNCH
	learnmove 41, TAKE_DOWN
	learnmove 49, BRAVE_BIRD ; Sky Drop → new move
	learnmove 57, IRON_HEAD
	learnmove 65, HYPER_BEAM
	learnmove 73, ROCK_SLIDE
	learnmove 81, GIGA_IMPACT
	db 0 ; no more level-up moves

MunchlaxEvosAttacks:
	evolution EVOLVE_HAPPINESS, TR_ANYTIME, SNORLAX
	db 0 ; no more evolutions
	learnmove 1, SWEET_KISS ; Recycle → event move
	learnmove 1, METRONOME
	learnmove 1, TACKLE
	learnmove 4, DEFENSE_CURL
	learnmove 9, AMNESIA
	learnmove 12, LICK
	learnmove 17, RAGE ; Chip Away → RBY TM move
	learnmove 20, TAKE_DOWN ; Screech → RBY TM move
	learnmove 25, BODY_SLAM
	learnmove 28, SCREECH ; Stockpile → Screech
	learnmove 33, PROTECT ; Swallow → TM move
	learnmove 36, ROLLOUT
	learnmove 41, OUTRAGE ; Fling → HGSS tutor move
	learnmove 44, BELLY_DRUM
	learnmove 49, CRUNCH ; Natural Gift → Snorlax move
	learnmove 50, GUNK_SHOT ; Snatch → egg move
	learnmove 57, DOUBLE_EDGE ; Last Resort → egg move
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 4, DEFENSE_CURL
	learnmove 9, AMNESIA
	learnmove 12, LICK
	learnmove 17, RAGE ; Chip Away → RBY TM move
	learnmove 20, TAKE_DOWN ; Yawn → RBY TM move
	learnmove 25, BODY_SLAM
	learnmove 28, REST
	learnmove 33, SLEEP_TALK
	learnmove 36, ROLLOUT
	learnmove 41, OUTRAGE ; Block → HGSS tutor move
	learnmove 44, BELLY_DRUM
	learnmove 49, CRUNCH
	learnmove 50, CLOSE_COMBAT ; Heavy Slam → new move
	learnmove 57, GIGA_IMPACT
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GUST
	learnmove 1, ICY_WIND ; Powder Snow → similar move
	learnmove 1, LEER ; Let's Go move
	learnmove 8, ICE_SHARD ; Mist → Ice Shard
	learnmove 15, SAFEGUARD ; Ice Shard → new move
	learnmove 22, EXTRASENSORY ; Mind Reader → event move
	learnmove 29, ANCIENTPOWER
	learnmove 36, AGILITY
	learnmove 43, ICE_BEAM
	learnmove 50, AIR_SLASH ; Reflect → new move
	learnmove 57, HAIL
	learnmove 64, REFLECT ; Tailwind → Reflect
	learnmove 71, BLIZZARD
	learnmove 78, BRAVE_BIRD ; Sheer Cold → new move
	learnmove 85, ROOST
	learnmove 92, HURRICANE
	learnmove 99, AEROBLAST ; new move
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, PECK
	learnmove 1, THUNDERSHOCK
	learnmove 1, LEER ; Let's Go move
	learnmove 8, THUNDER_WAVE
	learnmove 15, PROTECT ; Detect → similar move
	learnmove 22, EXTRASENSORY ; Pluck → event
	learnmove 29, ANCIENTPOWER
	learnmove 36, AGILITY ; Charge → Agility
	learnmove 43, THUNDERBOLT ; Agility → TM move
	learnmove 50, DRILL_PECK ; Discharge → Drill Peck
	learnmove 57, RAIN_DANCE
	learnmove 64, LIGHT_SCREEN
	learnmove 71, THUNDER ; Drill Peck → Thunder
	learnmove 78, BRAVE_BIRD ; Thunder → new move
	learnmove 85, ROOST
	learnmove 92, HURRICANE ; Zap Cannon → new move
	learnmove 99, ZAP_CANNON
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, WING_ATTACK
	learnmove 1, EMBER
	learnmove 1, LEER ; Let's Go move
	learnmove 8, FIRE_SPIN
	learnmove 15, SAFEGUARD ; Agility → Safeguard
	learnmove 22, EXTRASENSORY ; Endure → event move
	learnmove 29, ANCIENTPOWER
	learnmove 36, AGILITY ; Flamethrower → Agility
	learnmove 43, FLAMETHROWER ; Safeguard → Flamethrower
	learnmove 50, AIR_SLASH
	learnmove 57, SUNNY_DAY
	learnmove 64, WILL_O_WISP ; Heat Wave → event move
	learnmove 71, FIRE_BLAST ; Solar Beam → TM move
	learnmove 78, BRAVE_BIRD ; Sky Attack → new move
	learnmove 85, ROOST
	learnmove 92, HURRICANE
	learnmove 99, SOLAR_BEAM
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	evolution EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	learnmove 1, WRAP
	learnmove 1, LEER
	learnmove 5, THUNDER_WAVE
	learnmove 11, AQUA_JET ; Twister → egg move
	learnmove 15, DRAGON_RAGE
	learnmove 21, HEADBUTT ; Slam → tutor move
	learnmove 25, AGILITY
	learnmove 31, DRAGONBREATH ; Dragon Tail → GSC TM move
	learnmove 35, AQUA_TAIL
	learnmove 41, BARRIER ; Dragon Rush → event move
	learnmove 45, SAFEGUARD
	learnmove 51, DRAGON_DANCE
	learnmove 55, OUTRAGE
	learnmove 61, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	evolution EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	learnmove 1, WRAP
	learnmove 1, LEER
	learnmove 5, THUNDER_WAVE
	learnmove 11, AQUA_JET ; Twister → egg move
	learnmove 15, DRAGON_RAGE
	learnmove 21, HEADBUTT ; Slam → tutor move
	learnmove 25, AGILITY
	learnmove 33, DRAGONBREATH ; Dragon Tail → GSC TM move
	learnmove 39, AQUA_TAIL
	learnmove 47, BARRIER ; Dragon Rush → event move
	learnmove 53, SAFEGUARD
	learnmove 61, DRAGON_DANCE
	learnmove 67, OUTRAGE
	learnmove 75, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, HURRICANE
	learnmove 1, CLOSE_COMBAT
	learnmove 1, FIRE_PUNCH
	learnmove 1, THUNDERPUNCH
	learnmove 1, ROOST
	learnmove 1, WRAP
	learnmove 1, LEER
	learnmove 1, THUNDER_WAVE
	learnmove 1, WING_ATTACK ; evolution move
	learnmove 5, THUNDER_WAVE
	learnmove 11, AQUA_JET ; Twister → egg move
	learnmove 15, DRAGON_RAGE
	learnmove 21, HEADBUTT ; Slam → tutor move
	learnmove 25, AGILITY
	learnmove 33, DRAGONBREATH ; Dragon Tail → GSC TM move
	learnmove 39, AQUA_TAIL
	learnmove 47, BARRIER ; Dragon Rush → event move
	learnmove 53, SAFEGUARD
	learnmove 61, DRAGON_DANCE
	learnmove 67, OUTRAGE
	learnmove 75, HYPER_BEAM
	learnmove 81, HURRICANE
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TELEPORT ; Psywave → RBY TM move
	learnmove 1, FOCUS_ENERGY ; Laser Focus → similar move
	learnmove 1, CONFUSION
	learnmove 1, DISABLE
	learnmove 10, SAFEGUARD
	learnmove 19, SWIFT
	learnmove 28, FUTURE_SIGHT
	learnmove 37, CALM_MIND ; Psych Up → TM move
	learnmove 46, RECOVER
	learnmove 55, PSYCHIC_M
	learnmove 64, BARRIER
	learnmove 73, AURA_SPHERE
	learnmove 82, AMNESIA
	learnmove 91, NASTY_PLOT ; Mist → Mew move
	learnmove 100, PSYSTRIKE
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SKETCH ; Reflect Type → new move
	learnmove 1, TELEPORT ; event move
	learnmove 1, TACKLE ; Pound → similar move
	learnmove 1, TRANSFORM
	learnmove 1, CONFUSION ; Let's Go move
	learnmove 10, HEADBUTT ; Mega Punch → TM move
	learnmove 20, METRONOME
	learnmove 30, PSYCHIC_M
	learnmove 40, BARRIER
	learnmove 50, ANCIENTPOWER
	learnmove 60, BATON_PASS ; Amnesia → Baton Pass
	learnmove 70, SAFEGUARD ; Me First → Mewtwo move
	learnmove 80, AMNESIA ; Baton Pass → Amnesia
	learnmove 90, NASTY_PLOT
	learnmove 100, AURA_SPHERE
	db 0 ; no more level-up moves
