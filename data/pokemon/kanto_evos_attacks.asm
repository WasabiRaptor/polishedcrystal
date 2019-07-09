INCLUDE "constants.asm"

SECTION "Kanto Evolutions and Attacks", ROMX

INCLUDE "data/pokemon/kanto_evolution_moves.asm"

INCLUDE "data/pokemon/kanto_evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, MUD_SLAP ; Take Down → GSC TM move
	db 19, RAZOR_LEAF
	db 21, TAKE_DOWN ; Sweet Scent → Take Down
	db 25, GROWTH
	db 27, DOUBLE_EDGE
	db 31, ANCIENTPOWER ; Worry Seed → event move
	db 33, HEALINGLIGHT ; Synthesis → similar move
	db 37, SEED_BOMB
	db 43, SLUDGE_BOMB ; TM move
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, MUD_SLAP ; Take Down → GSC TM move
	db 20, RAZOR_LEAF
	db 23, TAKE_DOWN ; Sweet Scent → Take Down
	db 28, GROWTH
	db 31, DOUBLE_EDGE
	db 36, ANCIENTPOWER ; Worry Seed → event move
	db 39, HEALINGLIGHT ; Synthesis → similar move
	db 44, SEED_BOMB
	db 50, SLUDGE_BOMB ; TM move
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, PETAL_DANCE ; evolution move
	db 1, OUTRAGE ; HGSS tutor move
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, MUD_SLAP ; Take Down → GSC TM move
	db 20, RAZOR_LEAF
	db 23, TAKE_DOWN ; Sweet Scent → Take Down
	db 28, GROWTH
	db 31, DOUBLE_EDGE
	db 39, ANCIENTPOWER ; Worry Seed → event move
	db 45, HEALINGLIGHT ; Synthesis → similar move
	db 50, SEED_BOMB
	db 53, SLUDGE_BOMB ; Solar Beam → Sludge Bomb
	db 60, SOLAR_BEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, METAL_CLAW ; Dragon Rage → TM move
	db 19, DRAGON_RAGE ; Scary Face → Dragon Rage
	db 25, SCARY_FACE ; Fire Fang → Scary Face
	db 28, FLAME_WHEEL ; Flame Burst → similar move
	db 34, SLASH
	db 37, FLAMETHROWER
	db 43, FIRE_SPIN
	db 46, CRUNCH
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 17, METAL_CLAW ; Dragon Rage → TM move
	db 21, DRAGON_RAGE ; Scary Face → Dragon Rage
	db 28, SCARY_FACE ; Fire Fang → Scary Face
	db 32, FLAME_WHEEL ; Flame Burst → similar move
	db 39, SLASH
	db 43, FLAMETHROWER
	db 50, FIRE_SPIN
	db 54, CRUNCH
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK ; evolution move
	db 1, FLARE_BLITZ
	db 1, DRAGONBREATH
	db 1, DRAGON_CLAW
	db 1, SHADOW_CLAW
	db 1, AIR_SLASH
	db 1, OUTRAGE ; HGSS tutor move
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 17, METAL_CLAW ; Dragon Rage → TM move
	db 21, DRAGON_RAGE ; Scary Face → Dragon Rage
	db 28, SCARY_FACE ; Fire Fang → Scary Face
	db 32, FLAME_WHEEL ; Flame Burst → similar move
	db 41, SLASH
	db 47, FLAMETHROWER
	db 56, FIRE_SPIN
	db 62, CRUNCH
	db 71, FLARE_BLITZ
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER ; Tail Whip → similar move
	db 7, WATER_GUN
	db 10, DEFENSE_CURL ; Withdraw → similar move
	db 13, AQUA_JET ; Bubble → egg move
	db 16, BITE
	db 19, RAPID_SPIN
	db 22, PROTECT
	db 25, WATER_PULSE
	db 28, AQUA_TAIL
	db 31, CLOSE_COMBAT ; Skull Bash → new move
	db 34, MIRROR_COAT ; Iron Defense → egg move
	db 37, RAIN_DANCE
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER ; Tail Whip → similar move
	db 7, WATER_GUN
	db 10, DEFENSE_CURL ; Withdraw → similar move
	db 13, AQUA_JET ; Bubble → egg move
	db 16, BITE
	db 20, RAPID_SPIN
	db 24, PROTECT
	db 28, WATER_PULSE
	db 32, AQUA_TAIL
	db 36, CLOSE_COMBAT ; Skull Bash → new move
	db 40, MIRROR_COAT ; Iron Defense → egg move
	db 44, RAIN_DANCE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLASH_CANNON ; evolution move
	db 1, AURA_SPHERE ; new move
	db 1, ZAP_CANNON ; event move
	db 1, OUTRAGE ; HGSS tutor move
	db 1, TACKLE
	db 4, LEER ; Tail Whip → similar move
	db 7, WATER_GUN
	db 10, DEFENSE_CURL ; Withdraw → similar move
	db 13, AQUA_JET ; Bubble → egg move
	db 16, BITE
	db 20, RAPID_SPIN
	db 24, PROTECT
	db 28, WATER_PULSE
	db 32, AQUA_TAIL
	db 39, CLOSE_COMBAT ; Skull Bash → new move
	db 46, MIRROR_COAT ; Iron Defense → egg move
	db 53, RAIN_DANCE
	db 60, HYDRO_PUMP
	db 67, IRON_HEAD ; TM move
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 9, BUG_BITE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, TACKLE ; Caterpie move
	db 1, STRING_SHOT ; Caterpie move
	db 1, DEFENSE_CURL ; Harden → similar move
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Caterpie move
	db 1, STRING_SHOT ; Caterpie move
	db 1, GUST
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER ; Psybeam → Sleep Powder
	db 19, PSYBEAM ; Silver Wind → Psybeam
	db 23, SUPERSONIC
	db 25, SAFEGUARD
	db 29, HYPNOSIS ; Whirlwind → new move
	db 31, BUG_BUZZ
	db 35, REFLECT ; Rage Powder → RBY TM move
	db 37, AGILITY ; Captivate → new move
	db 41, HEALINGLIGHT ; Tailwind → new move
	db 43, AIR_SLASH
	db 47, PSYCHIC_M ; Quiver Dance → TM move
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 9, BUG_BITE
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, POISON_STING ; Weedle move
	db 1, STRING_SHOT ; Weedle move
	db 1, DEFENSE_CURL ; Harden → similar move
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING ; Weedle move
	db 1, STRING_SHOT ; Weedle move
	db 1, FURY_STRIKES ; Fury Attack → similar move
	db 1, U_TURN ; evolution move
	db 14, RAGE
	db 17, PURSUIT
	db 20, FOCUS_ENERGY
	db 23, VENOSHOCK
	db 26, FEINT_ATTACK ; Assurance → similar move
	db 29, TOXIC_SPIKES
	db 32, PIN_MISSILE
	db 35, POISON_JAB
	db 38, AGILITY
	db 41, SWORDS_DANCE ; Endeavor → TM move
	db 44, OUTRAGE ; Fell Stinger → Let's Go move
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GUST ; Sand Attack → Gust
	db 9, MUD_SLAP ; Gust → GSC TM move
	db 13, QUICK_ATTACK
	db 17, RAGE ; Whirlwind → RBY TM move
	db 21, CHARM ; Twister → egg move
	db 25, SWIFT ; Feather Dance → TM move
	db 29, AGILITY
	db 33, WING_ATTACK
	db 37, ROOST
	db 41, DRILL_PECK ; Tailwind → new move
	db 45, STEEL_WING ; Mirror Move → TM move
	db 49, AIR_SLASH
	db 53, HURRICANE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GUST ; Sand Attack → Gust
	db 9, MUD_SLAP ; Gust → GSC TM move
	db 13, QUICK_ATTACK
	db 17, RAGE ; Whirlwind → RBY TM move
	db 22, CHARM ; Twister → egg move
	db 27, SWIFT ; Feather Dance → TM move
	db 32, AGILITY
	db 37, WING_ATTACK
	db 42, ROOST
	db 47, DRILL_PECK ; Tailwind → new move
	db 52, STEEL_WING ; Mirror Move → TM move
	db 57, AIR_SLASH
	db 62, HURRICANE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP ; Sand Attack → similar move
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, RAGE ; Whirlwind → RBY TM move
	db 22, CHARM ; Twister → egg move
	db 27, SWIFT ; Feather Dance → TM move
	db 32, AGILITY
	db 38, WING_ATTACK
	db 44, ROOST
	db 50, DRILL_PECK ; Tailwind → new move
	db 56, STEEL_WING ; Mirror Move → TM move
	db 62, AIR_SLASH
	db 68, HURRICANE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 13, PURSUIT
	db 16, HYPER_FANG
	db 19, SUCKER_PUNCH
	db 22, CRUNCH
	db 25, FEINT_ATTACK ; Assurance → similar move
	db 28, SUPER_FANG
	db 31, DOUBLE_EDGE
	db 34, COUNTER ; Endeavor → egg move
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCARY_FACE ; evolution move
	db 1, SWORDS_DANCE
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 13, PURSUIT
	db 16, HYPER_FANG
	db 19, SUCKER_PUNCH
	db 24, CRUNCH
	db 29, FEINT_ATTACK ; Assurance → similar move
	db 34, SUPER_FANG
	db 39, DOUBLE_EDGE
	db 44, COUNTER ; Endeavor → egg move
	db 0 ; no more level-up moves
 
Rattata_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves

Raticate_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
SpearowEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    	
FearowEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 25, DISABLE ; Stockpile + Spit Up + Swallow → egg move
	db 28, PURSUIT ; Acid Spray → egg move
	db 35, POISON_JAB ; Mud Bomb → TM move
	db 36, LEECH_LIFE ; Gastro Acid → TM move
	db 38, IRON_TAIL ; Belch → TM move
	db 41, HAZE
	db 44, BULK_UP ; Coil → TM move
	db 49, GUNK_SHOT
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, CRUNCH ; evolution move
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 27, DISABLE ; Stockpile + Spit Up + Swallow → egg move
	db 32, PURSUIT ; Acid Spray → egg move
	db 39, POISON_JAB ; Mud Bomb → TM move
	db 44, LEECH_LIFE ; Gastro Acid → TM move
	db 48, IRON_TAIL ; Belch → TM move
	db 51, HAZE
	db 56, BULK_UP ; Coil → TM move
	db 63, GUNK_SHOT
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 5, LEER ; Tail Whip → similar move
	db 10, SWEET_KISS
	db 13, NASTY_PLOT
	db 18, THUNDER_WAVE
	db 23, SCARY_FACE ; event move
	db 28, SING ; event move
	db 38, PETAL_DANCE ; event move
	db 0 ; no more level-up moves
    	
PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, LEER ; Tail Whip → similar move
	db 5, GROWL
	db 7, CHARM ; Play Nice → Pichu move
	db 10, QUICK_ATTACK
	db 13, DOUBLE_KICK ; Electro Ball → Let's Go move
	db 18, THUNDER_WAVE
	db 21, MUD_SLAP ; Feint → GSC TM move
	db 23, DOUBLE_TEAM
	db 26, SPARK
	db 29, IRON_TAIL ; Nuzzle → TM move
	db 34, EXTREMESPEED ; Discharge → event move
	db 37, BODY_SLAM ; Slam → TM move
	db 42, THUNDERBOLT
	db 45, AGILITY
	db 50, WILD_CHARGE
	db 53, LIGHT_SCREEN
	db 58, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, LEER ; Tail Whip → similar move
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves

Raichu_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    	 
SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 3, MUD_SLAP ; Sand Attack → similar move
	db 5, POISON_STING
	db 7, ROLLOUT
	db 9, RAPID_SPIN
	db 11, PIN_MISSILE ; Fury Cutter → new move
	db 14, MAGNITUDE
	db 17, SWIFT
	db 20, FURY_STRIKES ; Fury Swipes → similar move
	db 23, METAL_CLAW ; Sand Tomb → HGSS tutor move
	db 26, SLASH
	db 30, DIG
	db 34, GYRO_BALL
	db 38, SWORDS_DANCE
	db 42, SANDSTORM
	db 46, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SLASH ; Crush Claw → Slash ; evolution move
	db 1, DEFENSE_CURL
	db 3, MUD_SLAP ; Sand Attack → similar move
	db 5, POISON_STING
	db 7, ROLLOUT
	db 9, RAPID_SPIN
	db 11, PIN_MISSILE ; Fury Cutter → new move
	db 14, MAGNITUDE
	db 17, SWIFT
	db 20, FURY_STRIKES ; Fury Swipes → similar move
	db 24, SUPER_FANG ; Sand Tomb → HGSS tutor move
	db 28, METAL_CLAW ; Slash → TM move
	db 33, DIG
	db 38, GYRO_BALL
	db 43, SWORDS_DANCE
	db 48, SANDSTORM
	db 53, EARTHQUAKE
	db 0 ; no more level-up moves

Sandshrew_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
Sandslash_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
Nidoran_FEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 7, LEER ; Tail Whip → similar move
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_STRIKES ; Fury Swipes → similar move
	db 21, BITE
	db 25, SWEET_KISS ; Helping Hand → event move
	db 31, TOXIC_SPIKES
	db 33, HEALINGLIGHT ; Flatter → event move (Moonlight)
	db 37, CRUNCH
	db 43, CHARM ; Captivate → egg move
	db 45, POISON_JAB
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 7, LEER ; Tail Whip → similar move
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_STRIKES ; Fury Swipes → similar move
	db 23, BITE
	db 28, SWEET_KISS ; Helping Hand → event move
	db 35, TOXIC_SPIKES
	db 38, HEALINGLIGHT ; Flatter → event move (Moonlight)
	db 43, CRUNCH
	db 50, CHARM ; Captivate → egg move
	db 58, POISON_JAB
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, CLOSE_COMBAT ; Superpower → similar move
	db 1, SCRATCH
	db 1, LEER ; Tail Whip → similar move
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, OUTRAGE ; Chip Away → HGSS tutor move
	db 35, BODY_SLAM
	db 43, EARTH_POWER
	db 58, CLOSE_COMBAT ; Superpower → similar move
	db 0 ; no more level-up moves

Nidoran_MEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_STRIKES ; Fury Attack → similar move
	db 21, HORN_ATTACK
	db 25, SWEET_KISS ; Helping Hand → event move
	db 31, TOXIC_SPIKES
	db 33, HEALINGLIGHT ; Flatter → event move (Morning Sun)
	db 37, POISON_JAB
	db 43, CHARM ; Captivate → egg move
	db 45, MEGAHORN ; Horn Drill → Nidoking move
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_STRIKES ; Fury Attack → similar move
	db 23, HORN_ATTACK
	db 28, SWEET_KISS ; Helping Hand → event move
	db 35, TOXIC_SPIKES
	db 38, HEALINGLIGHT ; Flatter → event move (Morning Sun)
	db 43, POISON_JAB
	db 50, CHARM ; Captivate → egg move
	db 58, MEGAHORN ; Horn Drill → Nidoking move
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGAHORN
	db 1, PECK
	db 1, FOCUS_ENERGY
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, OUTRAGE ; Chip Away → HGSS tutor move
	db 35, THRASH
	db 43, EARTH_POWER
	db 58, MEGAHORN
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    	
ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, DISARM_VOICE
	db 1, TACKLE ; Pound → similar move
	db 1, GROWL
	db 1, ENCORE
	db 7, SING
	db 10, DOUBLE_SLAP
	db 13, DEFENSE_CURL
	db 16, SWEET_KISS ; Follow Me → new move
	db 19, DIZZY_PUNCH ; Bestow → Crystal unique move
	db 22, TRI_ATTACK ; Wake-Up Slap → RBY TM move
	db 25, MINIMIZE
	db 28, PLAY_ROUGH ; Stored Power → new move
	db 31, METRONOME
	db 34, REFLECT ; Cosmic Power → TM move
	db 37, LIGHT_SCREEN ; Lucky Chant → TM move
	db 40, BODY_SLAM
	db 43, HEALINGLIGHT ; Moonlight → similar move
	db 46, MOONBLAST
	db 49, BELLY_DRUM ; Gravity → egg move
	db 50, EXTRASENSORY ; Meteor Mash → new move
	db 55, HEAL_BELL ; Healing Wish → HGSS tutor move
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEALINGLIGHT ; Moonlight → similar move
	db 1, DISARM_VOICE
	db 1, PLAY_ROUGH ; Let's Go TM move
	db 1, SING
	db 1, MINIMIZE
	db 1, METRONOME
	db 1, DOUBLE_SLAP
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

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, FLAMETHROWER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 0 ; no more level-up moves

Vulpix_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
Ninetales_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
IgglybuffEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, SWEET_KISS ; Igglybuff move
	db 3, DEFENSE_CURL
	db 5, TACKLE ; Pound → similar move
	db 9, DIZZY_PUNCH ; Play Nice → Crystal unique move
	db 11, DISARM_VOICE
	db 14, DISABLE
	db 17, DOUBLE_SLAP
	db 20, ROLLOUT
	db 22, CHARM ; Round → Igglybuff move
	db 27, MEAN_LOOK ; Wake-Up Slap → new move
	db 30, REST
	db 32, BODY_SLAM
	db 35, GYRO_BALL
	db 38, HEAL_BELL ; Mimic → HGSS tutor move
	db 41, HYPER_VOICE
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, MINIMIZE ; Let's Go move
	db 1, DOUBLE_EDGE
	db 1, PLAY_ROUGH
	db 1, SING
	db 1, DEFENSE_CURL
	db 1, DISABLE
	db 1, DOUBLE_SLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, SUPERSONIC
	db 7, ASTONISH
	db 11, BITE
	db 13, GUST ; Wing Attack → egg move
	db 17, CONFUSE_RAY
	db 19, WING_ATTACK ; Air Cutter → Wing Attack
	db 23, SWIFT
	db 25, SUPER_FANG ; Poison Fang → HGSS tutor move
	db 29, MEAN_LOOK
	db 31, LEECH_LIFE
	db 35, HAZE
	db 37, VENOSHOCK
	db 41, AIR_SLASH
	db 43, PURSUIT ; Quick Guard → egg move
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, ABSORB
	db 1, CRUNCH ; Let's Go move
	db 5, SUPERSONIC
	db 7, ASTONISH
	db 11, BITE
	db 13, GUST ; Wing Attack → egg move
	db 17, CONFUSE_RAY
	db 19, WING_ATTACK ; Air Cutter → Wing Attack
	db 24, SWIFT
	db 27, SUPER_FANG ; Poison Fang → HGSS tutor move
	db 32, MEAN_LOOK
	db 35, LEECH_LIFE
	db 40, HAZE
	db 43, VENOSHOCK
	db 48, AIR_SLASH
	db 51, PURSUIT ; Quick Guard → egg move
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, X_SCISSOR ; evolution move
	db 1, SCREECH
	db 1, ABSORB
	db 1, CRUNCH ; Let's Go move
	db 5, SUPERSONIC
	db 7, ASTONISH
	db 11, BITE
	db 13, GUST ; Wing Attack → egg move
	db 17, CONFUSE_RAY
	db 19, WING_ATTACK ; Air Cutter → Wing Attack
	db 24, SWIFT
	db 27, SUPER_FANG ; Poison Fang → HGSS tutor move
	db 32, MEAN_LOOK
	db 35, LEECH_LIFE
	db 40, HAZE
	db 43, VENOSHOCK
	db 48, AIR_SLASH
	db 51, CRUNCH ; Quick Guard → new move
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH
	db 5, LEECH_SEED ; Sweet Scent → event move
	db 9, ACID
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 19, MEGA_DRAIN
	db 23, CHARM ; Lucky Chant → egg move
	db 27, HEALINGLIGHT ; Moonlight → similar move
	db 31, GIGA_DRAIN
	db 35, TOXIC
	db 39, HYPER_VOICE ; Natural Gift → tutor move
	db 43, MOONBLAST
	db 47, GROWTH ; Grassy Terrain → GSC move
	db 51, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, LEECH_SEED ; Sweet Scent → event move
	db 9, ACID
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 19, MEGA_DRAIN
	db 24, CHARM ; Lucky Chant → egg move
	db 29, HEALINGLIGHT ; Moonlight → similar move
	db 34, GIGA_DRAIN
	db 39, TOXIC
	db 44, HYPER_VOICE ; Natural Gift → tutor move
	db 49, MOONBLAST
	db 54, GROWTH ; Grassy Terrain → Crystal move
	db 59, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, HEAL_BELL ; Aromatherapy → similar move
	db 1, POISONPOWDER
	db 1, STUN_SPORE
	db 39, GROWTH
	db 49, MOONBLAST ; Petal Blizzard → Gloom move
	db 59, PETAL_DANCE
	db 69, SOLAR_BEAM
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, HEAL_BELL ; new move
	db 1, SUNNY_DAY
	db 1, STUN_SPORE
	db 39, GROWTH ; Quiver Dance → Growth
	db 49, MOONBLAST ; Petal Blizzard → Gloom move
	db 59, PETAL_DANCE ; evolution move
	db 69, SOLAR_BEAM ; Leaf Storm → TM move
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 2, SLEEP_POWDER ; Let's Go move
	db 4, STUN_SPORE
	db 6, POISONPOWDER
	db 11, ABSORB
	db 17, BUG_BITE ; Fury Cutter → egg move
	db 22, SPORE
	db 27, SLASH
	db 33, GROWTH
	db 38, GIGA_DRAIN
	db 43, LEECH_LIFE ; Aromatherapy → TM move
	db 49, HEALINGLIGHT ; Rage Powder → new move
	db 54, X_SCISSOR
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHADOW_CLAW ; evolution move
	db 1, SCRATCH
	db 2, SLEEP_POWDER ; Let's Go move
	db 4, STUN_SPORE
	db 6, POISONPOWDER
	db 11, ABSORB
	db 17, BUG_BITE ; Fury Cutter → egg move
	db 22, SPORE
	db 29, SLASH
	db 37, GROWTH
	db 44, GIGA_DRAIN
	db 51, LEECH_LIFE ; Aromatherapy → TM move
	db 59, HEALINGLIGHT ; Rage Powder → new move
	db 66, X_SCISSOR
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, PSYBEAM
	db 23, BUG_BITE ; Stun Spore → HGSS tutor move
	db 25, STUN_SPORE ; Signal Beam → Stun Spore
	db 29, SLEEP_POWDER
	db 35, LEECH_LIFE
	db 37, ZEN_HEADBUTT
	db 41, BATON_PASS ; Poison Fang → egg move
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUG_BUZZ
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, PSYBEAM
	db 23, BUG_BITE ; Stun Spore → HGSS tutor move
	db 25, STUN_SPORE ; Signal Beam → Stun Spore
	db 29, SLEEP_POWDER
	db 31, GUST
	db 37, LEECH_LIFE
	db 41, ZEN_HEADBUTT
	db 47, BATON_PASS ; Poison Fang → egg move
	db 55, PSYCHIC_M
	db 59, BUG_BUZZ
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, MUD_SLAP ; Sand Attack → Mud-Slap
	db 1, SCRATCH
	db 1, CHARM ; XD move
	db 4, GROWL
	db 7, ASTONISH
	db 10, AGILITY ; Mud-Slap → Let's Go move
	db 14, MAGNITUDE
	db 18, BULLDOZE
	db 22, SUCKER_PUNCH
	db 25, ANCIENTPOWER ; Mud Bomb → egg move
	db 28, EARTH_POWER
	db 31, DIG
	db 35, SLASH
	db 39, EARTHQUAKE
	db 43, NIGHT_SLASH ; Fissure → Dugtrio move
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK ; Sand Tomb → Tri Attack ; evolution move
	db 1, NIGHT_SLASH
	db 1, MUD_SLAP ; Sand Attack → Mud-Slap
	db 1, SCRATCH
	db 1, CHARM ; XD move
	db 4, GROWL
	db 7, ASTONISH
	db 10, AGILITY ; Mud-Slap → Let's Go move
	db 14, MAGNITUDE
	db 18, BULLDOZE
	db 22, SUCKER_PUNCH
	db 25, ANCIENTPOWER ; Mud Bomb → egg move
	db 30, EARTH_POWER
	db 35, DIG
	db 41, SLASH
	db 47, EARTHQUAKE
	db 53, NIGHT_SLASH ; Fissure → Night Slash
	db 0 ; no more level-up moves

Diglett_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
Dugtrio_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, ASTONISH ; Fake Out → new move
	db 14, FURY_STRIKES ; Fury Swipes → similar move
	db 17, SCREECH
	db 22, FEINT_ATTACK
	db 25, PURSUIT ; Taunt → egg move
	db 30, PAY_DAY
	db 33, SLASH
	db 38, NASTY_PLOT
	db 41, THIEF ; Assurance → TM move
	db 46, CHARM ; Captivate → egg move
	db 49, NIGHT_SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE_BEAM ; RBY TM move
	db 1, PLAY_ROUGH
	db 1, SWIFT ; evolution move
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, ASTONISH ; Fake Out → new move
	db 14, FURY_STRIKES ; Fury Swipes → similar move
	db 17, SCREECH
	db 22, FEINT_ATTACK
	db 25, PURSUIT ; Taunt → egg move
	db 32, POWER_GEM
	db 37, SLASH
	db 44, NASTY_PLOT
	db 49, THIEF ; Assurance → TM move
	db 56, CHARM ; Captivate → egg move
	db 61, NIGHT_SLASH
	db 0 ; no more level-up moves

Meowth_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    	
Persian_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, LEER ; Tail Whip → similar move
	db 7, WATER_GUN
	db 10, CONFUSION
	db 13, FURY_STRIKES ; Fury Swipes → similar move
	db 16, WATER_PULSE
	db 19, DISABLE
	db 22, SCREECH
	db 25, ZEN_HEADBUTT
	db 28, AQUA_TAIL
	db 31, RAIN_DANCE ; Soak → TM move
	db 34, PSYBEAM ; Psych Up → egg move
	db 47, AMNESIA
	db 40, HYDRO_PUMP
	db 43, PSYCHIC_M ; Wonder Room → TM move
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, AQUA_JET
	db 4, LEER ; Tail Whip → similar move
	db 7, WATER_GUN
	db 10, CONFUSION
	db 13, FURY_STRIKES ; Fury Swipes → similar move
	db 16, WATER_PULSE
	db 19, DISABLE
	db 22, SCREECH
	db 25, ZEN_HEADBUTT
	db 28, AQUA_TAIL
	db 31, RAIN_DANCE ; Soak → TM move
	db 36, PSYBEAM ; Psych Up → egg move
	db 41, AMNESIA
	db 46, HYDRO_PUMP
	db 51, PSYCHIC_M ; Wonder Room → TM move
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 5, FURY_STRIKES ; Fury Swipes → similar move
	db 8, KARATE_CHOP
	db 12, PURSUIT
	db 15, SEISMIC_TOSS
	db 19, SWAGGER
	db 22, CROSS_CHOP
	db 26, REVERSAL ; Assurance → egg move
	db 29, FEINT_ATTACK ; Punishment → new move
	db 33, THRASH
	db 36, CLOSE_COMBAT
	db 40, SCREECH
	db 43, GUNK_SHOT ; Stomping Tantrum → HGSS tutor move
	db 47, OUTRAGE
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, SCRATCH
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 5, FURY_STRIKES ; Fury Swipes → similar move
	db 8, KARATE_CHOP
	db 12, PURSUIT
	db 15, SEISMIC_TOSS
	db 19, SWAGGER
	db 22, CROSS_CHOP
	db 26, REVERSAL ; Assurance → egg move
	db 30, FEINT_ATTACK ; Punishment → new move
	db 35, THRASH
	db 39, CLOSE_COMBAT
	db 44, SCREECH
	db 48, GUNK_SHOT ; Stomping Tantrum → HGSS tutor move
	db 53, OUTRAGE
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, BITE
	db 1, ROAR
	db 6, EMBER
	db 8, LEER
	db 10, SAFEGUARD ; Odor Sleuth → egg move
	db 12, BATON_PASS ; Helping Hand → new move
	db 17, FLAME_WHEEL
	db 19, REVERSAL
	db 21, DOUBLE_KICK ; Fire Fang → egg move
	db 23, TAKE_DOWN
	db 28, FIRE_SPIN ; Flame Burst → egg move
	db 30, AGILITY
	db 32, THRASH ; Retaliate → egg move
	db 34, FLAMETHROWER
	db 39, CRUNCH
	db 41, SUNNY_DAY ; Heat Wave → TM move
	db 43, OUTRAGE
	db 45, PLAY_ROUGH ; Flare Blitz → Let's Go move
	db 49, FLARE_BLITZ
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_DANCE ; new move
	db 1, GROWL
	db 1, BITE
	db 1, ROAR
	db 1, FLAME_WHEEL
	db 1, TAKE_DOWN
	db 1, EXTREMESPEED ; evolution move
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, SWEET_KISS ; event move
	db 1, WATER_GUN ; Water Sport → Water Gun
	db 5, HYPNOSIS ; Water Gun → Hypnosis
	db 8, DOUBLE_SLAP ; Hypnosis → Double Slap
	db 11, AQUA_JET ; Bubble → new move
	db 15, MUD_SLAP ; Double Slap → TM move
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 25, BUBBLE_BEAM
	db 28, LOW_KICK ; Mud Shot → Let's Go move
	db 31, BELLY_DRUM
	db 35, GROWTH ; Wake-Up Slap → event move
	db 38, HYDRO_PUMP
	db 41, EARTH_POWER ; Mud Bomb → similar move
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_HOLDING, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, SWEET_KISS ; event move
	db 1, WATER_GUN ; Water Sport → Water Gun
	db 5, HYPNOSIS ; Water Gun → Hypnosis
	db 8, DOUBLE_SLAP ; Hypnosis → Double Slap
	db 11, AQUA_JET ; Bubble → new move
	db 15, MUD_SLAP ; Double Slap → TM move
	db 18, RAIN_DANCE
	db 21, BODY_SLAM
	db 27, BUBBLE_BEAM
	db 28, LOW_KICK ; Mud Shot → Let's Go move
	db 37, BELLY_DRUM
	db 43, GROWTH ; Wake-Up Slap → event move
	db 48, HYDRO_PUMP
	db 53, EARTH_POWER ; Mud Bomb → similar move
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE_BEAM
	db 1, HYPNOSIS
	db 1, DOUBLE_SLAP
	db 1, CLOSE_COMBAT ; evolution move
	db 32, DYNAMICPUNCH
	db 43, EARTH_POWER ; Mind Reader → Poliwhirl move
	db 53, CROSS_CHOP ; Circle Throw → similar move
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN ; Bounce → TM move ; evolution move
	db 1, BUBBLE_BEAM
	db 1, HYPNOSIS
	db 1, DOUBLE_SLAP
	db 1, PERISH_SONG
	db 27, SWAGGER
	db 48, HYPER_VOICE
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_EVS, MON_SAT_EV, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, FORESIGHT ; evolution move
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 23, NIGHT_SHADE ; Miracle Eye → Let's Go move
	db 26, REFLECT
	db 28, LIGHT_SCREEN ; Psycho Cut → egg move
	db 31, RECOVER
	db 33, BARRIER ; Telekinesis → egg move
	db 36, BATON_PASS ; Ally Switch → new move
	db 38, PSYCHIC_M
	db 41, CALM_MIND
	db 43, CONFUSE_RAY ; Role Play → new move
	db 46, FUTURE_SIGHT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK ; RBY TM move
	db 1, TELEPORT
	db 1, FORESIGHT ; evolution move
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 23, NIGHT_SHADE ; Miracle Eye → Let's Go move
	db 26, REFLECT
	db 28, LIGHT_SCREEN ; Psycho Cut → egg move
	db 31, RECOVER
	db 33, BARRIER ; Telekinesis → egg move
	db 36, BATON_PASS ; Ally Switch → new move
	db 38, PSYCHIC_M
	db 41, CALM_MIND
	db 43, CONFUSE_RAY ; Role Play → new move
	db 46, FUTURE_SIGHT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 9, FORESIGHT
	db 13, MUD_SLAP ; Low Sweep → TM move
	db 15, SEISMIC_TOSS
	db 19, RAGE ; Revenge → RBY TM move
	db 21, KNOCK_OFF
	db 25, MACH_PUNCH ; Vital Throw → egg move
	db 27, BULLET_PUNCH ; Wake-Up Slap → egg move
	db 31, THRASH ; Dual Chop → event move
	db 33, CLOSE_COMBAT ; Submission → new move
	db 37, BULK_UP
	db 39, CROSS_CHOP
	db 43, SCARY_FACE
	db 45, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_EVS, MON_ATK_EV, MACHAMP
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 9, FORESIGHT
	db 13, MUD_SLAP ; Low Sweep → TM move
	db 15, SEISMIC_TOSS
	db 19, RAGE ; Revenge → RBY TM move
	db 21, KNOCK_OFF
	db 25, MACH_PUNCH ; Vital Throw → egg move
	db 27, BULLET_PUNCH ; Wake-Up Slap → egg move
	db 33, THRASH ; Dual Chop → event move
	db 37, CLOSE_COMBAT ; Submission → new move
	db 43, BULK_UP
	db 47, CROSS_CHOP
	db 53, SCARY_FACE
	db 57, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, STRENGTH ; evolution move
	db 1, LOW_KICK
	db 1, LEER
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 9, FORESIGHT
	db 13, MUD_SLAP ; Low Sweep → TM move
	db 15, SEISMIC_TOSS
	db 19, RAGE ; Revenge → RBY TM move
	db 21, KNOCK_OFF
	db 25, MACH_PUNCH ; Vital Throw → egg move
	db 27, BULLET_PUNCH ; Wake-Up Slap → egg move
	db 33, THRASH ; Dual Chop → event move
	db 37, CLOSE_COMBAT ; Submission → new move
	db 43, BULK_UP
	db 47, CROSS_CHOP
	db 53, SCARY_FACE
	db 57, DYNAMICPUNCH
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
	db 27, KNOCK_OFF
	db 29, SWEET_KISS ; Sweet Scent → event move
	db 35, HEALINGLIGHT ; Gastro Acid → new move
	db 39, RAZOR_LEAF
	db 41, POISON_JAB
	db 47, SUCKER_PUNCH ; Slam → HGSS tutor move
	db 50, SWORDS_DANCE ; Wring Out → egg move
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 24, ACID
	db 29, KNOCK_OFF
	db 32, SWEET_KISS ; Sweet Scent → event move
	db 39, HEALINGLIGHT ; Gastro Acid → new move
	db 44, RAZOR_LEAF
	db 47, POISON_JAB
	db 54, SUCKER_PUNCH ; Slam → HGSS tutor move
	db 58, SWORDS_DANCE ; Wring Out → egg move
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, HEALINGLIGHT ; Sweet Scent → new move
	db 1, RAZOR_LEAF
	db 32, SUCKER_PUNCH ; Leaf Storm → prior move
	db 44, SWORDS_DANCE ; Leaf Blade → prior move
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, SUPERSONIC
	db 7, WATER_GUN ; Constrict → new move
	db 10, ACID
	db 13, TOXIC_SPIKES
	db 16, WATER_PULSE
	db 19, WRAP
	db 22, CONFUSE_RAY ; Acid Spray → event move
	db 25, BUBBLE_BEAM
	db 28, BARRIER
	db 31, POISON_JAB
	db 34, VENOSHOCK ; Brine → tutor move
	db 37, SCREECH
	db 40, HEX
	db 43, SLUDGE_BOMB ; Sludge Wave → TM move
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWER_WHIP ; evolution move
	db 1, POISON_STING
	db 4, SUPERSONIC
	db 7, WATER_GUN ; Constrict → new move
	db 10, ACID
	db 13, TOXIC_SPIKES
	db 16, WATER_PULSE
	db 19, WRAP
	db 22, CONFUSE_RAY ; Acid Spray → event move
	db 25, BUBBLE_BEAM
	db 28, BARRIER
	db 32, POISON_JAB
	db 36, VENOSHOCK ; Brine → tutor move
	db 40, SCREECH
	db 44, HEX
	db 48, SLUDGE_BOMB ; Sludge Wave → TM move
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP ; Mud Sport → TM move
	db 6, RAPID_SPIN ; Rock Polish → event move
	db 10, ROLLOUT
	db 12, MAGNITUDE
	db 16, ROCK_THROW
	db 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 22, BULLDOZE
	db 24, SELFDESTRUCT
	db 28, SANDSTORM ; Stealth Rock → TM move
	db 30, ROCK_BLAST
	db 34, EARTHQUAKE
	db 36, EXPLOSION
	db 40, DOUBLE_EDGE
	db 42, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_EVS, MON_DEF_EV, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP ; Mud Sport → TM move
	db 6, RAPID_SPIN ; Rock Polish → event move
	db 10, ROLLOUT
	db 12, MAGNITUDE
	db 16, ROCK_THROW
	db 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 22, BULLDOZE
	db 24, SELFDESTRUCT
	db 30, SANDSTORM ; Stealth Rock → TM move
	db 34, ROCK_BLAST
	db 40, EARTHQUAKE
	db 44, EXPLOSION
	db 50, DOUBLE_EDGE
	db 54, STONE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP ; Mud Sport → TM move
	db 6, RAPID_SPIN ; Rock Polish → event move
	db 10, ROLLOUT
	db 12, MAGNITUDE
	db 16, ROCK_THROW
	db 18, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 22, BULLDOZE
	db 24, SELFDESTRUCT
	db 30, SANDSTORM ; Stealth Rock → TM move
	db 34, ROCK_BLAST
	db 40, EARTHQUAKE
	db 44, EXPLOSION
	db 50, DOUBLE_EDGE
	db 54, STONE_EDGE
	db 60, GYRO_BALL ; Heavy Slam → similar move
	db 0 ; no more level-up moves

Geodude_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
Graveler_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
Golem_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 4, LEER ; Tail Whip → similar move
	db 9, EMBER
	db 13, FLAME_WHEEL
	db 17, STOMP
	db 21, LOW_KICK ; Flame Charge → event move
	db 25, FIRE_SPIN
	db 29, TAKE_DOWN
	db 33, DOUBLE_KICK ; Inferno → egg move
	db 37, AGILITY
	db 41, FIRE_BLAST
	db 45, EXTREMESPEED ; Bounce → new move
	db 49, FLARE_BLITZ
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, PLAY_ROUGH ; evolution move
	db 1, POISON_JAB
	db 1, MEGAHORN
	db 1, GROWL
	db 1, TACKLE
	db 4, LEER ; Tail Whip → similar move
	db 9, EMBER
	db 13, FLAME_WHEEL
	db 17, STOMP
	db 21, QUICK_ATTACK ; Flame Charge → egg move
	db 25, FIRE_SPIN
	db 29, TAKE_DOWN
	db 33, DOUBLE_KICK ; Inferno → egg move
	db 37, AGILITY
	db 41, FIRE_BLAST
	db 45, EXTREMESPEED ; Bounce → new move
	db 49, FLARE_BLITZ
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_HOLDING, KINGS_ROCK, SLOWKING
	db EVOLVE_LEVEL, 37, SLOWBRO
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, ZEN_HEADBUTT
	db 36, SAFEGUARD ; Slack Off → egg move
	db 41, AMNESIA
	db 45, PSYCHIC_M
	db 49, RAIN_DANCE
	db 54, BELLY_DRUM ; Psych Up → egg move
	db 58, RECOVER ; Heal Pulse → similar move
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL ; Withdraw → similar move ; evolution move
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, ZEN_HEADBUTT
	db 36, SAFEGUARD ; Slack Off → egg move
	db 43, AMNESIA
	db 49, PSYCHIC_M
	db 55, RAIN_DANCE
	db 62, BELLY_DRUM ; Psych Up → egg move
	db 68, RECOVER ; Heal Pulse → similar move
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWER_GEM
	db 1, HIDDEN_POWER
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, ZEN_HEADBUTT
	db 36, NASTY_PLOT
	db 41, SWAGGER
	db 45, PSYCHIC_M
	db 49, RAIN_DANCE ; Trump Card → TM move
	db 54, BELLY_DRUM ; Psych Up → egg move
	db 58, RECOVER ; Heal Pulse → similar move
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
	;db EVOLVE_LOCATION, MAGNET_TUNNEL, MAGNEZONE
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

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_JAB
	db 1, BATON_PASS ; Brave Bird → event move
	db 1, PECK
	db 1, MUD_SLAP ; Sand Attack → similar move
	db 1, LEER
	db 7, FURY_STRIKES ; Fury Attack → similar move
	db 9, AERIAL_ACE
	db 13, KNOCK_OFF
	db 15, RAZOR_LEAF ; Let's Go move
	db 19, SLASH
	db 21, KARATE_CHOP ; Air Cutter → new move
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 33, NIGHT_SLASH
	db 37, ACROBATICS
	db 43, HI_JUMP_KICK ; Feint → new move
	db 45, FALSE_SWIPE
	db 49, AIR_SLASH
	db 55, BRAVE_BIRD
	db 0 ; no more level-up moves

MadaamuEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, QUICK_ATTACK
	db 8, RAGE
	db 12, FURY_STRIKES ; Fury Attack → similar move
	db 15, PURSUIT
	db 19, BATON_PASS ; Pluck → XD move
	db 22, DOUBLE_KICK ; Double Hit → new move
	db 26, AGILITY
	db 29, DOUBLE_TEAM ; Uproar → TM move
	db 33, TRI_ATTACK ; Acupressure → Crystal move
	db 36, SWORDS_DANCE
	db 40, HI_JUMP_KICK ; Jump Kick → similar move
	db 43, DRILL_PECK
	db 47, REVERSAL ; Endeavor → new move
	db 50, THRASH
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK ; evolution move
	db 1, PECK
	db 1, GROWL
	db 5, QUICK_ATTACK
	db 9, RAGE
	db 12, FURY_STRIKES ; Fury Attack → similar move
	db 15, PURSUIT
	db 19, BATON_PASS ; Pluck → XD move
	db 22, DOUBLE_KICK ; Double Hit → new move
	db 26, AGILITY
	db 29, DOUBLE_TEAM ; Uproar → TM move
	db 34, BULLDOZE ; Acupressure → TM move
	db 38, SWORDS_DANCE
	db 43, HI_JUMP_KICK ; Jump Kick → similar move
	db 47, DRILL_PECK
	db 52, REVERSAL ; Endeavor → new move
	db 56, THRASH
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 3, GROWL
	db 7, WATER_GUN ; Water Sport → RBY TM move
	db 11, ICY_WIND
	db 13, ENCORE
	db 17, ICE_SHARD
	db 21, REST
	db 23, SLEEP_TALK ; Aqua Ring → TM move
	db 27, AURORA_BEAM
	db 31, AQUA_JET
	db 33, BUBBLE_BEAM ; Brine → RBY TM move
	db 37, TAKE_DOWN
	db 41, PERISH_SONG ; Dive →  new move
	db 43, AQUA_TAIL
	db 47, ICE_BEAM
	db 51, SAFEGUARD
	db 53, HAIL
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICICLE_SPEAR ; Sheer Cold → egg move ; evolution move
	db 1, HEADBUTT
	db 3, GROWL
	db 7, WATER_GUN ; Signal Beam → RBY TM move
	db 11, ICY_WIND
	db 13, ENCORE
	db 17, ICE_SHARD
	db 21, REST
	db 23, SLEEP_TALK ; Aqua Ring → TM move
	db 27, AURORA_BEAM
	db 31, AQUA_JET
	db 33, BUBBLE_BEAM ; Brine → RBY TM move
	db 39, TAKE_DOWN
	db 45, PERISH_SONG ; Dive → new move
	db 49, AQUA_TAIL
	db 55, ICE_BEAM
	db 61, SAFEGUARD
	db 65, HAIL
	db 69, MEGAHORN ; Let's Go move
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound → similar move
	db 1, ACID ; Poison Gas → new move
	db 4, DEFENSE_CURL ; Harden → similar move
	db 7, MUD_SLAP
	db 12, DISABLE
	db 15, VENOSHOCK ; Sludge → tutor move
	db 18, HAZE ; Mud Bomb → egg move
	db 21, MINIMIZE
	db 26, FEINT_ATTACK ; Fling → new move
	db 29, SLUDGE_BOMB
	db 32, SCARY_FACE ; Sludge Wave → egg move
	db 37, SCREECH
	db 40, GUNK_SHOT
	db 43, PAIN_SPLIT ; Acid Armor → HGSS tutor move
	db 46, EXPLOSION ; Belch → TM move
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, MOONBLAST ; Let's Go move
	db 1, TACKLE ; Pound → similar move
	db 1, ACID ; Poison Gas → new move
	db 4, DEFENSE_CURL ; Harden → similar move
	db 7, MUD_SLAP
	db 12, DISABLE
	db 15, VENOSHOCK ; Sludge → tutor move
	db 18, HAZE ; Mud Bomb → egg move
	db 21, MINIMIZE
	db 26, FEINT_ATTACK ; Fling → new move
	db 29, SLUDGE_BOMB
	db 32, SCARY_FACE ; Sludge Wave → egg move
	db 37, SCREECH
	db 40, GUNK_SHOT
	db 46, PAIN_SPLIT ; Acid Armor → HGSS tutor move
	db 52, EXPLOSION ; Belch → TM move
	db 0 ; no more level-up moves

Grimer_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    	
Muk_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    	
ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL ; Withdraw → similar move
	db 8, SUPERSONIC
	db 13, ICICLE_SPEAR
	db 16, PROTECT
	db 20, LEER
	db 25, ICE_SHARD
	db 28, BUBBLE_BEAM ; Clamp → egg move
	db 32, SELFDESTRUCT ; Razor Shell → RBY TM move
	db 37, AURORA_BEAM
	db 40, WHIRLPOOL
	db 44, EXPLOSION ; Brine → RBY TM move
	db 49, BARRIER ; Iron Defense → egg move
	db 52, ICE_BEAM
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, TOXIC_SPIKES
	db 1, FURY_STRIKES ; Spike Cannon → similar move
	db 1, TRI_ATTACK ; Shell Smash → RBY TM move
	db 1, DEFENSE_CURL ; Withdraw → similar move
	db 1, SUPERSONIC
	db 1, PROTECT
	db 1, AURORA_BEAM
	db 1, SPIKES ; evolution move
	db 28, ICICLE_SPEAR ; Spikes → Icicle Spear
	db 50, ICICLE_CRASH
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 5, DISABLE ; Spite → egg move
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, SUCKER_PUNCH
	db 26, PAIN_SPLIT ; Payback → HGSS tutor move
	db 29, SHADOW_BALL
	db 33, DREAM_EATER
	db 36, DARK_PULSE
	db 40, DESTINY_BOND
	db 43, HEX
	db 47, PERISH_SONG ; Nightmare → new move
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_EVS, MON_SPD_EV, GENGAR
	db 0 ; no more evolutions
	db 1, SHADOW_CLAW ; Shadow Punch → TM move ; evolution move
	db 1, HYPNOSIS
	db 1, LICK
	db 5, DISABLE ; Spite → egg move
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, SUCKER_PUNCH
	db 28, PAIN_SPLIT ; Payback → HGSS tutor move
	db 33, SHADOW_BALL
	db 39, DREAM_EATER
	db 44, DARK_PULSE
	db 50, DESTINY_BOND
	db 55, HEX
	db 61, PERISH_SONG ; Nightmare → new move
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHADOW_CLAW ; Shadow Punch → TM move ; evolution move
	db 1, HYPNOSIS
	db 1, LICK
	db 5, DISABLE ; Spite → egg move
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, SUCKER_PUNCH
	db 28, PAIN_SPLIT ; Payback → HGSS tutor move
	db 33, SHADOW_BALL
	db 39, DREAM_EATER
	db 44, DARK_PULSE
	db 50, DESTINY_BOND
	db 55, HEX
	db 61, PERISH_SONG ; Nightmare → new move
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_HOLDING, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 1, WRAP ; Bind → similar move
	db 4, CURSE
	db 7, ROCK_THROW
	db 10, RAGE
	db 13, ROCK_BLAST ; Rock Tomb → egg move
	db 16, BODY_SLAM ; Stealth Rock → TM move
	db 19, SANDSTORM ; Rock Polish → Sandstorm
	db 22, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 25, DRAGONBREATH
	db 28, HEADBUTT ; Slam → tutor move
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, CRUNCH ; Sand Tomb → Steelix move
	db 40, IRON_TAIL
	db 43, DIG
	db 46, STONE_EDGE
	db 49, DOUBLE_EDGE
	db 52, EARTHQUAKE ; Sandstorm → TM move
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, IRON_TAIL ; evolution move
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 1, WRAP ; Bind → similar move
	db 4, CURSE
	db 7, ROCK_THROW
	db 10, RAGE
	db 13, ROCK_BLAST ; Rock Tomb → egg move
	db 16, BODY_SLAM ; Stealth Rock → TM move
	db 19, SANDSTORM ; Autotomize → Sandstorm
	db 22, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 25, DRAGONBREATH
	db 28, HEADBUTT ; Slam → tutor move
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, CRUNCH
	db 40, IRON_HEAD
	db 43, DIG
	db 46, STONE_EDGE
	db 49, DOUBLE_EDGE
	db 52, EARTHQUAKE ; Sandstorm → TM move
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound → similar move
	db 1, HYPNOSIS
	db 5, DISABLE
	db 9, CONFUSION
	db 13, HEADBUTT
	db 17, LOW_KICK ; Poison Gas → HGSS tutor move
	db 21, CALM_MIND ; Meditate → TM move
	db 25, PSYBEAM
	db 29, TRI_ATTACK ; Wake-Up Slap → RBY TM move
	db 33, BARRIER ; Psych Up → egg move
	db 37, BELLY_DRUM ; Synchronoise → event move
	db 41, ZEN_HEADBUTT
	db 45, SWAGGER
	db 49, PSYCHIC_M
	db 53, NASTY_PLOT
	db 57, TOXIC ; Psyshock → TM move
	db 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound → similar move
	db 1, HYPNOSIS
	db 5, DISABLE
	db 9, CONFUSION
	db 13, HEADBUTT
	db 17, LOW_KICK ; Poison Gas → HGSS tutor move
	db 21, CALM_MIND ; Meditate → TM move
	db 25, PSYBEAM
	db 29, TRI_ATTACK ; Wake-Up Slap → RBY TM move
	db 33, BARRIER ; Psych Up → egg move
	db 37, BELLY_DRUM ; Synchronoise → event move
	db 41, ZEN_HEADBUTT
	db 45, SWAGGER
	db 49, PSYCHIC_M
	db 53, NASTY_PLOT
	db 57, TOXIC ; Psyshock → TM move
	db 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, AQUA_JET ; Bubble → new move
	db 5, SCRATCH ; Vice Grip → new move
	db 9, LEER
	db 11, DEFENSE_CURL ; Harden → similar move
	db 15, BUBBLE_BEAM
	db 19, DIG ; Mud Shot → egg move
	db 21, METAL_CLAW
	db 25, STOMP
	db 29, PROTECT
	db 31, X_SCISSOR ; Guillotine → TM move
	db 35, CLOSE_COMBAT ; Slam → new move
	db 39, CRABHAMMER ; Brine → Crabhammer
	db 41, ANCIENTPOWER ; Crabhammer → HGSS tutor move
	db 45, REVERSAL ; Flail → similar move
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, AQUA_JET ; Bubble → new move
	db 5, SCRATCH ; Vice Grip → new move
	db 9, LEER
	db 11, DEFENSE_CURL ; Harden → similar move
	db 15, BUBBLE_BEAM
	db 19, DIG ; Mud Shot → egg move
	db 21, METAL_CLAW
	db 25, STOMP
	db 32, PROTECT
	db 37, X_SCISSOR ; Guillotine → TM move
	db 44, CLOSE_COMBAT ; Slam → new move
	db 51, CRABHAMMER ; Brine → Crabhammer
	db 56, ANCIENTPOWER ; Crabhammer → HGSS tutor move
	db 63, REVERSAL ; Flail → new move
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK ; Let's Go move
	db 4, SONIC_BOOM
	db 6, AGILITY ; Eerie Impulse → event move
	db 9, SPARK
	db 11, ROLLOUT
	db 13, SCREECH
	db 16, THUNDER_WAVE ; Charge Beam → TM move
	db 20, SWIFT
	db 22, THUNDERBOLT ; Electro Ball → TM move
	db 26, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 34, REFLECT ; Magnet Rise → TM move
	db 37, THUNDER ; Discharge → TM move
	db 41, EXPLOSION
	db 46, GYRO_BALL
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK ; Let's Go move
	db 4, SONIC_BOOM
	db 6, AGILITY ; Eerie Impulse → event move
	db 9, SPARK
	db 11, ROLLOUT
	db 13, SCREECH
	db 16, THUNDER_WAVE ; Charge Beam → TM move
	db 20, SWIFT
	db 22, THUNDERBOLT ; Electro Ball → TM move
	db 26, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 36, REFLECT ; Magnet Rise → TM move
	db 41, THUNDER ; Discharge → TM move
	db 47, EXPLOSION
	db 54, GYRO_BALL
	db 58, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, TACKLE ; Barrage → new move
	db 1, HYPNOSIS
	db 7, REFLECT
	db 11, LEECH_SEED
	db 14, CONFUSION
	db 17, SELFDESTRUCT ; Bullet Seed → RBY TM move
	db 19, STUN_SPORE
	db 21, POISONPOWDER
	db 23, SLEEP_POWDER
	db 27, PSYBEAM ; Confusion → Let's Go move
	db 33, ANCIENTPOWER ; Worry Seed → HGSS tutor move
	db 37, HEALINGLIGHT ; Natural Gift → new move
	db 43, SOLAR_BEAM
	db 47, EXTRASENSORY
	db 50, PSYCHIC_M ; Bestow → TM move
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ; Barrage → new move
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 1, STOMP ; evolution move
	db 17, LOW_KICK ; Psyshock → HGSS tutor move
	db 27, ZEN_HEADBUTT ; Egg Bomb → tutor move
	db 37, POWER_WHIP ; Wood Hammer → new move
	db 47, PETAL_DANCE ; Leaf Storm → new move
	db 0 ; no more level-up moves

Exeggutor_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 3, TACKLE ; Tail Whip → new move
	db 7, MUD_SLAP ; Bone Club → TM move
	db 11, HEADBUTT
	db 13, LEER
	db 17, FOCUS_ENERGY
	db 21, BONEMERANG
	db 23, RAGE
	db 27, LOW_KICK ; False Swipe → HGSS tutor move
	db 31, FALSE_SWIPE ; Thrash → False Swipe
	db 33, THRASH ; Fling → Thrash
	db 37, MAGNITUDE ; Stomping Tantrum → new move
	db 41, ROCK_SMASH ; Endeavor → TM move
	db 43, DOUBLE_EDGE
	db 47, OUTRAGE ; Bone Rush → HGSS tutor move
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, PAIN_SPLIT ; evolution move
	db 1, GROWL
	db 3, TACKLE ; Tail Whip → new move
	db 7, MUD_SLAP ; Bone Club → TM move
	db 11, HEADBUTT
	db 13, LEER
	db 17, FOCUS_ENERGY
	db 21, BONEMERANG
	db 23, RAGE
	db 27, LOW_KICK ; False Swipe → HGSS tutor move
	db 33, SHADOW_CLAW ; Thrash → TM move
	db 37, THRASH ; Fling → Thrash
	db 43, MAGNITUDE ; Stomping Tantrum → new move
	db 49, ROCK_SMASH ; Endeavor → TM move
	db 53, DOUBLE_EDGE
	db 59, OUTRAGE ; Bone Rush → HGSS tutor move
	db 0 ; no more level-up moves

Marowak_AlolaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAGE ; Fake Out → event move
	db 1, FORESIGHT
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK ; evolution move
	db 1, BULK_UP ; Revenge → TM move
	db 5, AGILITY ; Meditate → new move
	db 9, PURSUIT ; Rolling Kick → egg move
	db 13, LOW_KICK ; Jump Kick → HGSS tutor move
	db 17, STOMP ; Brick Break → new move
	db 21, ENDURE ; Focus Energy → TM move
	db 25, AERIAL_ACE ; Feint → new move
	db 29, HI_JUMP_KICK
	db 33, DOUBLE_TEAM ; Mind Reader → TM move
	db 37, FORESIGHT
	db 41, FOCUS_ENERGY ; Wide Guard → Let's Go move
	db 45, REVERSAL ; Blaze Kick → Reversal
	db 49, ENDURE
	db 53, FOCUS_BLAST ; Mega Kick → TM move
	db 57, CLOSE_COMBAT
	db 61, COUNTER ; Reversal → TM move
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, DIZZY_PUNCH ; Comet Punch → Dizzy Punch ; evolution move
	db 1, BULK_UP ; Revenge → TM move
	db 6, AGILITY
	db 11, PURSUIT
	db 13, MACH_PUNCH
	db 17, BULLET_PUNCH
	db 21, AERIAL_ACE ; Feint → new move
	db 26, SEISMIC_TOSS ; Vacuum Wave → RBY TM move
	db 31, FORESIGHT ; Quick Guard → new move
	db 36, THUNDERPUNCH
	db 36, ICE_PUNCH
	db 36, FIRE_PUNCH
	db 41, FOCUS_ENERGY ; Sky Uppercut → Let's Go move
	db 46, DYNAMICPUNCH ; Mega Punch → TM move
	db 51, PROTECT ; Detect → TM move
	db 56, FOCUS_BLAST ; Focus Punch → TM move
	db 61, COUNTER
	db 66, CLOSE_COMBAT
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK ; Rolling Kick → HGSS tutor move ; evolution move
	db 1, BULK_UP ; Revenge → TM move
	db 6, FOCUS_ENERGY
	db 10, PURSUIT
	db 15, QUICK_ATTACK
	db 19, RAPID_SPIN
	db 24, FEINT_ATTACK ; Feint → new move
	db 28, COUNTER
	db 33, DOUBLE_KICK ; Triple Kick → similar move
	db 37, AGILITY
	db 42, GYRO_BALL
	db 46, FORESIGHT ; Wide Guard + Quick Guard → new move
	db 50, PROTECT ; Detect → similar move
	db 55, CLOSE_COMBAT
	db 60, REVERSAL ; Endeavor → new move
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
LickilickyEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, ACID ; Smog → new move
	db 7, SMOKESCREEN
	db 12, ENDURE ; Assurance → TM move
	db 15, WILL_O_WISP ; Clear Smog → TM move
	db 18, VENOSHOCK ; Sludge → tutor move
	db 23, SELFDESTRUCT
	db 26, HAZE
	db 29, GYRO_BALL
	db 34, SLUDGE_BOMB
	db 37, EXPLOSION
	db 40, DESTINY_BOND
	db 42, PAIN_SPLIT ; Belch → HGSS tutor move
	db 45, FIRE_BLAST ; Memento → TM move
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, ACID ; Smog → new move
	db 7, SMOKESCREEN
	db 12, ENDURE ; Assurance → TM move
	db 15, WILL_O_WISP ; Clear Smog → TM move
	db 18, VENOSHOCK ; Sludge → tutor move
	db 23, SELFDESTRUCT
	db 26, HAZE
	db 29, GYRO_BALL
	db 34, SLUDGE_BOMB
	db 40, EXPLOSION
	db 46, DESTINY_BOND
	db 51, PAIN_SPLIT ; Belch → HGSS tutor move
	db 57, FIRE_BLAST ; Memento → TM move
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, MUD_SLAP ; Sand-Attack → similar move
	db 1, LEER ; Tail Whip → similar move
	db 3, HORN_ATTACK
	db 6, FURY_STRIKES ; Fury Attack → similar move
	db 9, SCARY_FACE
	db 13, MAGNITUDE ; Smack Down → egg move
	db 17, STOMP
	db 21, BULLDOZE
	db 25, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 29, ROCK_BLAST
	db 33, DOUBLE_EDGE ; Drill Run → event move
	db 37, TAKE_DOWN
	db 41, STONE_EDGE
	db 45, EARTHQUAKE
	db 49, CLOSE_COMBAT ; Megahorn → new move
	db 53, MEGAHORN ; Horn Drill → Megahorn
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	;db EVOLVE_HOLDING, PROTECTOR, RHYPERIOR
	db 0 ; no more evolutions
	db 1, OUTRAGE ; Hammer Arm → HGSS tutor move ; evolution move
	db 1, TACKLE
	db 1, MUD_SLAP ; Sand-Attack → similar move
	db 1, LEER ; Tail Whip → similar move
	db 3, HORN_ATTACK
	db 6, FURY_STRIKES ; Fury Attack → similar move
	db 9, SCARY_FACE
	db 13, MAGNITUDE ; Smack Down → egg move
	db 17, STOMP
	db 21, BULLDOZE
	db 25, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 29, ROCK_BLAST
	db 33, DOUBLE_EDGE ; Drill Run → event move
	db 37, TAKE_DOWN
	db 41, STONE_EDGE
	db 48, EARTHQUAKE
	db 55, CLOSE_COMBAT ; Megahorn → new move
	db 62, MEGAHORN ; Horn Drill → Megahorn
	db 0 ; no more level-up moves

RhyperiorEvosAttacks:
	db 0 ; no more evolutions
	db 1, OUTRAGE ; Hammer Arm → HGSS tutor move ; evolution move
	db 1, POISON_JAB
	db 1, TACKLE
	db 1, MUD_SLAP ; Sand-Attack → similar move
	db 1, LEER ; Tail Whip → similar move
	db 3, HORN_ATTACK
	db 6, FURY_STRIKES ; Fury Attack → similar move
	db 9, SCARY_FACE
	db 13, MAGNITUDE ; Smack Down → egg move
	db 17, STOMP
	db 21, BULLDOZE
	db 25, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 29, ROCK_BLAST
	db 33, DOUBLE_EDGE ; Drill Run → event move
	db 37, TAKE_DOWN
	db 41, STONE_EDGE
	db 48, EARTHQUAKE
	db 55, CLOSE_COMBAT ; Megahorn → new move
	db 62, MEGAHORN ; Horn Drill → Megahorn
	db 69, ROCK_SLIDE ; Rock Wrecker → similar move
	db 0 ; no more level-up moves

HappinyEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, TACKLE ; Pound → similar move
	db 1, GROWL
	db 5, LEER ; Tail Whip → similar move
	db 9, SWEET_KISS ; Refresh → Happiny move
	db 12, DOUBLE_SLAP
	db 16, SOFTBOILED
	db 20, METRONOME ; Bestow → egg move
	db 23, MINIMIZE
	db 27, TAKE_DOWN
	db 31, SING
	db 35, CHARM ; Fling → Happiny move
	db 39, HEAL_BELL ; Heal Pulse → HGSS tutor move
	db 44, BODY_SLAM ; Egg Bomb → TM move
	db 50, LIGHT_SCREEN
	db 57, SUBSTITUTE ; Healing Wish → TM move
	db 65, DOUBLE_EDGE
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, TACKLE ; Pound → similar move
	db 1, GROWL
	db 5, LEER ; Tail Whip → similar move
	db 9, SWEET_KISS ; Refresh → Happiny move
	db 12, DOUBLE_SLAP
	db 16, SOFTBOILED
	db 20, METRONOME ; Bestow → egg move
	db 23, MINIMIZE
	db 27, TAKE_DOWN
	db 31, SING
	db 35, CHARM ; Fling → Happiny move
	db 39, HEAL_BELL ; Heal Pulse → HGSS tutor move
	db 44, BODY_SLAM ; Egg Bomb → TM move
	db 50, LIGHT_SCREEN
	db 57, SUBSTITUTE ; Healing Wish → TM move
	db 65, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db EVOLVE_MOVE, ANCIENTPOWER, TANGROWTH
	db 0 ; no more evolutions
	db 1, WRAP ; Constrict → similar move
	db 4, SLEEP_POWDER
	db 7, VINE_WHIP
	db 10, ABSORB
	db 14, POISONPOWDER
	db 17, PROTECT ; Bind → TM move
	db 20, GROWTH
	db 23, MEGA_DRAIN
	db 27, KNOCK_OFF
	db 30, STUN_SPORE
	db 33, HEALINGLIGHT ; Natural Gift → new move
	db 36, GIGA_DRAIN
	db 38, ANCIENTPOWER
	db 41, BODY_SLAM ; Slam → similar move
	db 44, PAIN_SPLIT ; Tickle → HGSS tutor move
	db 46, SWORDS_DANCE ; Wring Out → TM move
	db 48, BATON_PASS ; Grassy Terrain → new move
	db 50, POWER_WHIP
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP ; Constrict → similar move
	db 4, SLEEP_POWDER
	db 7, VINE_WHIP
	db 10, ABSORB
	db 14, POISONPOWDER
	db 17, PROTECT ; Bind → TM move
	db 20, GROWTH
	db 23, MEGA_DRAIN
	db 27, KNOCK_OFF
	db 30, STUN_SPORE
	db 33, HEALINGLIGHT ; Natural Gift → new move
	db 36, GIGA_DRAIN
	db 40, ANCIENTPOWER
	db 43, BODY_SLAM ; Slam → similar move
	db 46, PAIN_SPLIT ; Tickle → HGSS tutor move
	db 49, SWORDS_DANCE ; Wring Out → TM move
	db 50, BATON_PASS ; Grassy Terrain → new move
	db 53, POWER_WHIP
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, DIZZY_PUNCH ; Comet Punch → Dizzy Punch
	db 1, LEER
	db 7, LOW_KICK ; Fake Out → HGSS tutor move
	db 10, BITE ; Tail Whip → Bite
	db 13, HEADBUTT ; Bite → tutor move
	db 19, DOUBLE_KICK ; Double Hit → new move
	db 22, RAGE
	db 25, TAKE_DOWN ; Mega Punch → RBY TM move
	db 31, STOMP ; Chip Away → egg move
	db 34, MACH_PUNCH ; Dizzy Punch → new move
	db 37, CRUNCH
	db 43, ENDURE
	db 46, OUTRAGE
	db 49, SUCKER_PUNCH
	db 50, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, WATER_GUN ; Bubble → similar move
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, AQUA_JET ; Twister → new move
	db 21, WATER_PULSE ; Bubble Beam → TM move
	db 26, FOCUS_ENERGY
	db 31, OUTRAGE ; Brine → HGSS tutor move
	db 36, AGILITY
	db 41, DRAGON_PULSE
	db 46, DRAGON_DANCE
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_HOLDING, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, WATER_GUN ; Bubble → similar move
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, AQUA_JET ; Twister → new move
	db 21, WATER_PULSE ; Bubble Beam → TM move
	db 26, FOCUS_ENERGY
	db 31, OUTRAGE ; Brine → HGSS tutor move
	db 38, AGILITY
	db 45, DRAGON_PULSE
	db 52, DRAGON_DANCE
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGONBREATH ; evolution move
	db 1, WATER_GUN ; Bubble → similar move
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, AQUA_JET ; Twister → new move
	db 21, WATER_PULSE ; Bubble Beam → TM move
	db 26, FOCUS_ENERGY
	db 31, OUTRAGE ; Brine → HGSS tutor move
	db 38, AGILITY
	db 45, DRAGON_PULSE
	db 52, DRAGON_DANCE
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
SeakingEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 4, WATER_GUN
	db 7, RAPID_SPIN
	db 10, RECOVER
	db 13, HYPNOSIS ; Psywave → new move
	db 16, SWIFT
	db 18, BUBBLE_BEAM
	db 22, AGILITY ; Camouflage → new move
	db 24, GYRO_BALL
	db 28, PAIN_SPLIT ; Brine → HGSS tutor move
	db 31, MINIMIZE
	db 35, REFLECT ; Reflect Type → new move
	db 37, POWER_GEM
	db 40, CONFUSE_RAY
	db 42, PSYCHIC_M
	db 46, LIGHT_SCREEN
	db 49, HYDRO_PUMP ; Cosmic Power → Hydro Pump
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, WATER_GUN
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, SWIFT
	db 40, CONFUSE_RAY
	db 60, TRI_ATTACK ; RBY TM move
	db 0 ; no more level-up moves

Mime_JrEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 1, CONFUSION
	db 4, HYPNOSIS ; Copycat → egg move
	db 8, CALM_MIND ; Meditate → TM move
	db 11, DOUBLE_SLAP
	db 13, PROTECT ; Mimic → event move
	db 15, METRONOME ; Psywave → RBY TM move
	db 18, ENCORE
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 25, PSYBEAM
	db 29, SUBSTITUTE
	db 32, CONFUSE_RAY ; Recycle → egg move
	db 36, TRICK
	db 39, PSYCHIC_M
	db 43, FUTURE_SIGHT ; Role Play → egg move
	db 46, BATON_PASS
	db 50, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_HOLDING, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 25, BUG_BITE ; Fury Cutter → similar move
	db 29, SLASH
	db 33, GLARE ; Razor Wind → new move
	db 37, DOUBLE_TEAM
	db 41, X_SCISSOR
	db 45, NIGHT_SLASH
	db 49, BATON_PASS ; Double Hit → egg move
	db 50, AIR_SLASH
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, METAL_CLAW ; evolution move
	db 1, BULLET_PUNCH
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 25, BUG_BITE ; Fury Cutter → similar move
	db 29, SLASH
	db 33, BUG_BUZZ ; Razor Wind → egg move
	db 37, DEFENSE_CURL ; Iron Defense → similar move
	db 41, X_SCISSOR
	db 45, CRUNCH ; Night Slash → Prism tutor move
	db 49, CLOSE_COMBAT ; Double Hit → new move
	db 50, IRON_HEAD
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves
    
JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, PETAL_DANCE ; event move
	db 1, TACKLE ; Pound → similar move
	db 1, LICK
	db 1, CONFUSION ; Smoochum move
	db 1, SWEET_KISS ; Smoochum move
	db 5, SING ; Lovely Kiss → Smoochum move
	db 8, SCREECH ; Lovely Kiss → Let's Go move
	db 11, ICY_WIND ; Powder Snow → TM move
	db 15, DOUBLE_SLAP
	db 18, ICE_PUNCH
	db 21, METRONOME ; Heart Stamp → RBY TM move
	db 25, MEAN_LOOK
	db 28, DRAIN_KISS ; Fake Tears → Drain Kiss
	db 33, PSYBEAM ; Wake-Up Slap → new move
	db 39, AVALANCHE
	db 44, BODY_SLAM
	db 49, NASTY_PLOT ; Wring Out → egg move
	db 55, PERISH_SONG
	db 60, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, BULK_UP ; Shock Wave → TM move
	db 19, THUNDER_WAVE
	db 22, KARATE_CHOP ; Electro Ball → egg move
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 33, SCREECH ; Discharge → Screech
	db 36, CROSS_CHOP ; Screech → new move
	db 40, THUNDERBOLT
	db 43, THUNDER
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	;db EVOLVE_HOLDING, ELECTIRIZER, ELECTIVIRE
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, BULK_UP ; Shock Wave → TM move
	db 19, THUNDER_WAVE
	db 22, KARATE_CHOP ; Electro Ball → egg move
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 36, SCREECH ; Discharge → Screech
	db 42, CROSS_CHOP ; Screech → new move
	db 49, THUNDERBOLT
	db 55, THUNDER
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	db 1, CLOSE_COMBAT ; evolution move
	db 1, FIRE_PUNCH
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, BULK_UP ; Shock Wave → TM move
	db 19, THUNDER_WAVE
	db 22, KARATE_CHOP ; Electro Ball → egg move
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 36, SCREECH ; Discharge → Screech
	db 42, CROSS_CHOP ; Screech → new move
	db 49, THUNDERBOLT
	db 55, THUNDER
	db 62, GIGA_IMPACT
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, HAZE ; Smog → new move
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FEINT_ATTACK
	db 15, FIRE_SPIN
	db 19, LOW_KICK ; Clear Smog → HGSS tutor move
	db 22, FLAME_WHEEL ; Flame Burst → new move
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 33, SUNNY_DAY ; Lava Plume → Sunny Day
	db 36, FOCUS_BLAST ; Sunny Day → TM move
	db 40, FLAMETHROWER
	db 43, FIRE_BLAST
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	;db EVOLVE_HOLDING, MAGMARIZER, MAGMORTAR
	db 0 ; no more evolutions
	db 1, HAZE ; Smog → new move
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FEINT_ATTACK
	db 15, FIRE_SPIN
	db 19, LOW_KICK ; Clear Smog → HGSS tutor move
	db 22, FLAME_WHEEL ; Flame Burst → new move
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 36, SUNNY_DAY ; Lava Plume → Sunny Day
	db 42, FOCUS_BLAST ; Sunny Day → TM move
	db 49, FLAMETHROWER
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLASH_CANNON ; evolution move
	db 1, THUNDERPUNCH
	db 1, HAZE ; Smog → new move
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FEINT_ATTACK
	db 15, FIRE_SPIN
	db 19, LOW_KICK ; Clear Smog → HGSS tutor move
	db 22, FLAME_WHEEL ; Flame Burst → new move
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 36, SUNNY_DAY ; Lava Plume → Sunny Day
	db 42, FOCUS_BLAST ; Sunny Day → TM move
	db 49, FLAMETHROWER
	db 55, FIRE_BLAST
	db 62, HYPER_BEAM
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_STRIKES ; Vice Grip → new move
	db 1, FOCUS_ENERGY
	db 4, WRAP ; Bind → similar move
	db 8, SEISMIC_TOSS
	db 12, DEFENSE_CURL ; Harden → similar move
	db 16, RAGE ; Revenge → RBY TM move
	db 20, ROCK_THROW ; Brick Break → event move
	db 26, ROCK_SMASH ; Vital Throw → TM move
	db 29, X_SCISSOR
	db 33, FEINT_ATTACK ; Submission → egg moves
	db 36, OUTRAGE ; Storm Throw → Let's Go move
	db 40, SWORDS_DANCE
	db 43, THRASH
	db 47, CLOSE_COMBAT ; Superpower → similar move
	db 50, MEGAHORN ; Guillotine → new move
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER ; Tail Whip → similar move
	db 5, RAGE
	db 8, HORN_ATTACK
	db 11, SCARY_FACE
	db 15, PURSUIT
	db 19, REST
	db 24, QUICK_ATTACK ; Payback → event move
	db 29, FOCUS_ENERGY ; Work Up → Let's Go move
	db 35, TAKE_DOWN
	db 41, ZEN_HEADBUTT
	db 48, SWAGGER
	db 55, THRASH
	db 63, DOUBLE_EDGE
	db 71, GIGA_IMPACT
	db 80, OUTRAGE ; HGSS tutor move
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, REVERSAL ; Flail → event move
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATERFALL ; HM move
	db 1, BITE ; evolution move
	db 1, THRASH
	db 1, DRAGON_RAGE
	db 1, WRAP ; Bind → similar move
	db 21, LEER
	db 24, GUST ; Twister → new move
	db 27, DRAGON_RAGE ; Ice Fang → Dragon Rage
	db 30, AQUA_TAIL
	db 33, SCARY_FACE
	db 36, DRAGONBREATH ; Dragon Rage → GSC TM move
	db 39, CRUNCH
	db 42, HYDRO_PUMP
	db 45, DRAGON_DANCE
	db 48, HURRICANE
	db 51, RAIN_DANCE
	db 54, HYPER_BEAM
	db 57, OUTRAGE ; HGSS tutor move
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER ; HGSS tutor move
	db 1, DRAGON_RAGE ; RBY TM move
	db 1, DRAGONBREATH ; GSC TM move
	db 1, SING
	db 1, GROWL
	db 1, WATER_GUN
	db 4, BITE ; Mist → event move
	db 7, CONFUSE_RAY
	db 10, ICE_SHARD
	db 14, WATER_PULSE
	db 18, BODY_SLAM
	db 22, RAIN_DANCE
	db 27, PERISH_SONG
	db 32, ICE_BEAM
	db 37, FUTURE_SIGHT ; Brine → event move
	db 43, SAFEGUARD
	db 47, HYDRO_PUMP
	db 50, OUTRAGE ; Sheer Cold → HGSS tutor move
	db 54, MEGAHORN ; Let's Go TM move
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_ITEM, SHINY_STONE, SYLVEON
	;db EVOLVE_LOCATION, ILEX_FOREST, LEAFEON
	;db EVOLVE_LOCATION, ICE_PATH, GLACEON
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
	db EVOLVE_HOLDING, DUBIOUS_DISC, PORYGON_Z
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

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, WRAP ; Constrict → similar move
	db 1, DEFENSE_CURL ; Withdraw → similar move
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROCK_THROW ; Rollout → event move
	db 19, LEER
	db 25, ROLLOUT ; Mud Shot → Rollout
	db 28, BUBBLE_BEAM ; Brine → egg move
	db 34, PROTECT
	db 37, ANCIENTPOWER
	db 43, AURORA_BEAM ; Tickle → egg move
	db 46, ROCK_BLAST
	db 50, POWER_GEM ; Shell Smash → new move
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP ; Constrict → similar move
	db 1, DEFENSE_CURL ; Withdraw → similar move
	db 1, ICICLE_SPEAR ; Spike Cannon → new move ; evolution move
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROCK_THROW ; Rollout → event move
	db 19, LEER
	db 25, ROLLOUT ; Mud Shot → Rollout
	db 28, BUBBLE_BEAM ; Brine → egg move
	db 34, PROTECT
	db 37, ANCIENTPOWER
	db 48, SPIKES ; Tickle → new move
	db 56, ROCK_BLAST
	db 67, POWER_GEM ; Shell Smash → new move
	db 75, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL ; Harden → similar move
	db 6, ABSORB
	db 11, MUD_SLAP ; Leer → GSC TM move
	db 16, ROCK_THROW ; Mud Shot → Rock Throw (event move)
	db 21, LEER ; Sand Attack → Leer
	db 26, ENDURE
	db 31, AQUA_JET
	db 36, MEGA_DRAIN
	db 41, SCREECH ; Metal Sound → similar move
	db 46, ANCIENTPOWER
	db 51, GIGA_DRAIN ; Wring Out → TM move
	db 56, IRON_HEAD ; new move
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL ; Harden → similar move
	db 1, SLASH ; evolution move
	db 6, ABSORB
	db 11, MUD_SLAP ; Leer → GSC TM move
	db 16, ROCK_THROW ; Mud Shot → Rock Throw (event move)
	db 21, LEER ; Sand Attack → Leer
	db 26, ENDURE
	db 31, AQUA_JET
	db 36, MEGA_DRAIN
	db 45, SCREECH ; Metal Sound → similar move
	db 54, ANCIENTPOWER
	db 63, LOW_KICK ; Wring Out → HGSS tutor move
	db 72, NIGHT_SLASH
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE ; RBY TM move
	db 1, DRAGONBREATH ; GSC TM move
	db 1, WING_ATTACK
	db 1, SUPERSONIC
	db 1, BITE
	db 1, SCARY_FACE
	db 9, ROAR
	db 13, ROCK_THROW ; Let's Go move
	db 17, AGILITY
	db 25, ANCIENTPOWER
	db 33, CRUNCH
	db 41, TAKE_DOWN
	db 49, BRAVE_BIRD ; Sky Drop → new move
	db 57, IRON_HEAD
	db 65, HYPER_BEAM
	db 73, ROCK_SLIDE
	db 81, GIGA_IMPACT
	db 0 ; no more level-up moves

MunchlaxEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, SNORLAX
	db 0 ; no more evolutions
	db 1, SWEET_KISS ; Recycle → event move
	db 1, METRONOME
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, LICK
	db 17, RAGE ; Chip Away → RBY TM move
	db 20, TAKE_DOWN ; Screech → RBY TM move
	db 25, BODY_SLAM
	db 28, SCREECH ; Stockpile → Screech
	db 33, PROTECT ; Swallow → TM move
	db 36, ROLLOUT
	db 41, OUTRAGE ; Fling → HGSS tutor move
	db 44, BELLY_DRUM
	db 49, CRUNCH ; Natural Gift → Snorlax move
	db 50, GUNK_SHOT ; Snatch → egg move
	db 57, DOUBLE_EDGE ; Last Resort → egg move
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, LICK
	db 17, RAGE ; Chip Away → RBY TM move
	db 20, TAKE_DOWN ; Yawn → RBY TM move
	db 25, BODY_SLAM
	db 28, REST
	db 33, SLEEP_TALK
	db 36, ROLLOUT
	db 41, OUTRAGE ; Block → HGSS tutor move
	db 44, BELLY_DRUM
	db 49, CRUNCH
	db 50, CLOSE_COMBAT ; Heavy Slam → new move
	db 57, GIGA_IMPACT
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, ICY_WIND ; Powder Snow → similar move
	db 1, LEER ; Let's Go move
	db 8, ICE_SHARD ; Mist → Ice Shard
	db 15, SAFEGUARD ; Ice Shard → new move
	db 22, EXTRASENSORY ; Mind Reader → event move
	db 29, ANCIENTPOWER
	db 36, AGILITY
	db 43, ICE_BEAM
	db 50, AIR_SLASH ; Reflect → new move
	db 57, HAIL
	db 64, REFLECT ; Tailwind → Reflect
	db 71, BLIZZARD
	db 78, BRAVE_BIRD ; Sheer Cold → new move
	db 85, ROOST
	db 92, HURRICANE
	db 99, AEROBLAST ; new move
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 1, LEER ; Let's Go move
	db 8, THUNDER_WAVE
	db 15, PROTECT ; Detect → similar move
	db 22, EXTRASENSORY ; Pluck → event
	db 29, ANCIENTPOWER
	db 36, AGILITY ; Charge → Agility
	db 43, THUNDERBOLT ; Agility → TM move
	db 50, DRILL_PECK ; Discharge → Drill Peck
	db 57, RAIN_DANCE
	db 64, LIGHT_SCREEN
	db 71, THUNDER ; Drill Peck → Thunder
	db 78, BRAVE_BIRD ; Thunder → new move
	db 85, ROOST
	db 92, HURRICANE ; Zap Cannon → new move
	db 99, ZAP_CANNON
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 1, LEER ; Let's Go move
	db 8, FIRE_SPIN
	db 15, SAFEGUARD ; Agility → Safeguard
	db 22, EXTRASENSORY ; Endure → event move
	db 29, ANCIENTPOWER
	db 36, AGILITY ; Flamethrower → Agility
	db 43, FLAMETHROWER ; Safeguard → Flamethrower
	db 50, AIR_SLASH
	db 57, SUNNY_DAY
	db 64, WILL_O_WISP ; Heat Wave → event move
	db 71, FIRE_BLAST ; Solar Beam → TM move
	db 78, BRAVE_BIRD ; Sky Attack → new move
	db 85, ROOST
	db 92, HURRICANE
	db 99, SOLAR_BEAM
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, AQUA_JET ; Twister → egg move
	db 15, DRAGON_RAGE
	db 21, HEADBUTT ; Slam → tutor move
	db 25, AGILITY
	db 31, DRAGONBREATH ; Dragon Tail → GSC TM move
	db 35, AQUA_TAIL
	db 41, BARRIER ; Dragon Rush → event move
	db 45, SAFEGUARD
	db 51, DRAGON_DANCE
	db 55, OUTRAGE
	db 61, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, AQUA_JET ; Twister → egg move
	db 15, DRAGON_RAGE
	db 21, HEADBUTT ; Slam → tutor move
	db 25, AGILITY
	db 33, DRAGONBREATH ; Dragon Tail → GSC TM move
	db 39, AQUA_TAIL
	db 47, BARRIER ; Dragon Rush → event move
	db 53, SAFEGUARD
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, HURRICANE
	db 1, CLOSE_COMBAT
	db 1, FIRE_PUNCH
	db 1, THUNDERPUNCH
	db 1, ROOST
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, WING_ATTACK ; evolution move
	db 5, THUNDER_WAVE
	db 11, AQUA_JET ; Twister → egg move
	db 15, DRAGON_RAGE
	db 21, HEADBUTT ; Slam → tutor move
	db 25, AGILITY
	db 33, DRAGONBREATH ; Dragon Tail → GSC TM move
	db 39, AQUA_TAIL
	db 47, BARRIER ; Dragon Rush → event move
	db 53, SAFEGUARD
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, HYPER_BEAM
	db 81, HURRICANE
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT ; Psywave → RBY TM move
	db 1, FOCUS_ENERGY ; Laser Focus → similar move
	db 1, CONFUSION
	db 1, DISABLE
	db 10, SAFEGUARD
	db 19, SWIFT
	db 28, FUTURE_SIGHT
	db 37, CALM_MIND ; Psych Up → TM move
	db 46, RECOVER
	db 55, PSYCHIC_M
	db 64, BARRIER
	db 73, AURA_SPHERE
	db 82, AMNESIA
	db 91, NASTY_PLOT ; Mist → Mew move
	db 100, PSYSTRIKE
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH ; Reflect Type → new move
	db 1, TELEPORT ; event move
	db 1, TACKLE ; Pound → similar move
	db 1, TRANSFORM
	db 1, CONFUSION ; Let's Go move
	db 10, HEADBUTT ; Mega Punch → TM move
	db 20, METRONOME
	db 30, PSYCHIC_M
	db 40, BARRIER
	db 50, ANCIENTPOWER
	db 60, BATON_PASS ; Amnesia → Baton Pass
	db 70, SAFEGUARD ; Me First → Mewtwo move
	db 80, AMNESIA ; Baton Pass → Amnesia
	db 90, NASTY_PLOT
	db 100, AURA_SPHERE
	db 0 ; no more level-up moves
