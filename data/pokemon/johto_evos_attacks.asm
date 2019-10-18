INCLUDE "constants.asm"

SECTION "Johto Evolutions and Attacks", ROMX

INCLUDE "data/pokemon/johto_evolution_moves.asm"

INCLUDE "data/pokemon/johto_evos_attacks_pointers.asm"

JohtoEvosAttacks::

ChikoritaEvosAttacks:
	evolution EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, HEALINGLIGHT ; Synthesis → similar move
	db 17, REFLECT
	db 20, DISARM_VOICE ; Magical Leaf → new move
	db 23, ENERGY_BALL ; Natural Gift → tutor move
	db 28, ANCIENTPOWER ; Sweet Scent → HGSS tutor move
	db 31, LIGHT_SCREEN
	db 34, BODY_SLAM
	db 39, SAFEGUARD
	db 42, PLAY_ROUGH ; Aromatherapy → new move
	db 45, SOLAR_BEAM
	db 48, HEAL_BELL ; Aromatherapy → similar move
	db 51, OUTRAGE ; HGSS tutor move
	db 56, MOONBLAST ; new move
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	evolution EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, HEALINGLIGHT ; Synthesis → similar move
	db 18, REFLECT
	db 22, DISARM_VOICE ; Magical Leaf → new move
	db 26, ENERGY_BALL ; Natural Gift → tutor move
	db 32, ANCIENTPOWER ; Sweet Scent → HGSS tutor move
	db 36, LIGHT_SCREEN
	db 40, BODY_SLAM
	db 43, SAFEGUARD
	db 47, PLAY_ROUGH ; Aromatherapy → new move
	db 51, SOLAR_BEAM
	db 54, HEAL_BELL ; Aromatherapy → similar move
	db 58, OUTRAGE ; HGSS tutor move
	db 64, MOONBLAST ; new move
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, PETAL_DANCE ; evolution move
	db 1, TACKLE
	db 1, GROWL
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 12, HEALINGLIGHT ; Synthesis → similar move
	db 18, REFLECT
	db 22, DISARM_VOICE ; Magical Leaf → new move
	db 26, ENERGY_BALL ; Natural Gift → tutor move
	db 34, ANCIENTPOWER ; Sweet Scent → HGSS tutor move
	db 40, LIGHT_SCREEN
	db 46, BODY_SLAM
	db 50, SAFEGUARD
	db 56, PLAY_ROUGH ; Aromatherapy → new move
	db 62, SOLAR_BEAM
	db 66, HEAL_BELL ; Aromatherapy → similar move
	db 72, OUTRAGE ; HGSS tutor move
	db 80, MOONBLAST ; new move
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	evolution EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 19, FLAME_WHEEL
	db 22, DEFENSE_CURL
	db 28, DIG ; Flame Charge → TM move
	db 31, SWIFT
	db 37, REVERSAL ; Lava Plume → egg move
	db 40, FLAMETHROWER
	db 46, EARTH_POWER ; Inferno → new move
	db 49, ROLLOUT
	db 55, DOUBLE_EDGE
	db 58, EARTHQUAKE ; Burn Up → TM move
	db 64, FLARE_BLITZ ; Eruption → egg move
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	evolution EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 31, SWIFT
	db 35, DIG ; Flame Charge → TM move
	db 42, REVERSAL ; Lava Plume → egg move
	db 46, FLAMETHROWER
	db 53, EARTH_POWER ; Inferno → new move
	db 57, ROLLOUT
	db 64, DOUBLE_EDGE
	db 68, EARTHQUAKE ; Burn Up → TM move
	db 75, FLARE_BLITZ ; Eruption → egg move
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_PUNCH ; evolution move
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 31, SWIFT
	db 35, DIG ; Flame Charge → TM move
	db 43, REVERSAL ; Lava Plume → egg move
	db 48, FLAMETHROWER
	db 56, EARTH_POWER ; Inferno → new move
	db 61, ROLLOUT
	db 69, DOUBLE_EDGE
	db 74, EARTHQUAKE ; Burn Up → TM move
	db 81, FLARE_BLITZ ; Eruption → egg move
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	evolution EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 20, METAL_CLAW ; Ice Fang → egg move
	db 22, REVERSAL ; Flail → similar move
	db 27, AGILITY ; Feraligatr move
	db 29, CRUNCH
	db 34, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 36, SLASH
	db 41, SCREECH
	db 43, THRASH
	db 48, AQUA_TAIL
	db 50, CLOSE_COMBAT ; Superpower → similar move
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	evolution EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, METAL_CLAW ; Ice Fang → egg move
	db 24, REVERSAL ; Flail → similar move
	db 30, AGILITY ; Feraligatr move
	db 33, CRUNCH
	db 39, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 42, SLASH
	db 48, SCREECH
	db 51, THRASH
	db 57, AQUA_TAIL
	db 60, CLOSE_COMBAT ; Superpower → similar move
	db 66, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH ; evolution move
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, METAL_CLAW ; Ice Fang → egg move
	db 24, REVERSAL ; Flail → similar move
	db 32, AGILITY
	db 37, CRUNCH
	db 45, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 50, SLASH
	db 56, SCREECH
	db 62, THRASH
	db 68, OUTRAGE ; HGSS tutor move
	db 73, AQUA_TAIL
	db 78, CLOSE_COMBAT ; Superpower → similar move
	db 84, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	evolution EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES ; Fury Swipes → similar move
	db 16, DIZZY_PUNCH ; Helping Hand → event move
	db 19, SUPER_FANG ; Follow Me → HGSS tutor move
	db 25, HEADBUTT ; Slam → tutor move
	db 28, REST
	db 31, SUCKER_PUNCH
	db 36, AMNESIA
	db 39, BATON_PASS
	db 42, SLASH ; Me First → egg move
	db 47, HYPER_VOICE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, AGILITY ; evolution move
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES ; Fury Swipes → similar move
	db 17, DIZZY_PUNCH ; Helping Hand → event move
	db 21, SUPER_FANG ; Follow Me → HGSS tutor move
	db 28, HEADBUTT ; Slam → tutor move
	db 32, REST
	db 36, SUCKER_PUNCH
	db 42, AMNESIA
	db 46, BATON_PASS
	db 50, SLASH ; Me First → egg move
	db 56, HYPER_VOICE
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	evolution EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 4, HYPNOSIS
	db 7, PECK
	db 10, CONFUSION
	db 13, NIGHT_SHADE ; Echoed Voice → event move
	db 16, ZEN_HEADBUTT
	db 19, HEX ; Psycho Shift → new move
	db 22, WING_ATTACK ; Extrasensory → egg move
	db 25, TAKE_DOWN
	db 28, REFLECT
	db 31, AIR_SLASH
	db 34, EXTRASENSORY ; Uproar → Extrasensory
	db 37, ROOST
	db 40, HYPER_VOICE ; Moonblast → tutor move
	db 43, MOONBLAST ; Synchronoise → Moonblast
	db 46, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, DREAM_EATER
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 4, HYPNOSIS
	db 7, PECK
	db 10, CONFUSION
	db 13, NIGHT_SHADE ; Echoed Voice → event move
	db 16, ZEN_HEADBUTT
	db 19, HEX ; Psycho Shift → new move
	db 23, WING_ATTACK ; Extrasensory → egg move
	db 27, TAKE_DOWN
	db 31, REFLECT
	db 35, AIR_SLASH
	db 39, EXTRASENSORY ; Uproar → Extrasensory
	db 43, ROOST
	db 47, HYPER_VOICE ; Moonblast → tutor move
	db 51, MOONBLAST ; Synchronoise → Moonblast
	db 55, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	evolution EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, LIGHT_SCREEN
	db 12, REFLECT
	db 12, SAFEGUARD
	db 15, MACH_PUNCH
	db 19, BARRIER ; Silver Wind → event move
	db 22, DIZZY_PUNCH ; Comet Punch → new move
	db 26, BATON_PASS
	db 29, AGILITY
	db 33, BUG_BUZZ
	db 36, AIR_SLASH
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE ; evolution move
	db 1, TACKLE
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, LIGHT_SCREEN
	db 12, REFLECT
	db 12, SAFEGUARD
	db 15, MACH_PUNCH
	db 20, BARRIER ; Silver Wind → event move
	db 24, DIZZY_PUNCH ; Comet Punch → new move
	db 29, BATON_PASS
	db 33, AGILITY
	db 38, BUG_BUZZ
	db 42, AIR_SLASH
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	evolution EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, WRAP ; Constrict → similar move
	db 5, ABSORB
	db 8, GLARE ; Infestation → new move
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	db 19, GROWTH ; Shadow Sneak → event move
	db 22, FURY_STRIKES ; Fury Swipes → similar move
	db 26, SUCKER_PUNCH
	db 29, MEAN_LOOK ; Spider Web → similar move
	db 33, AGILITY
	db 36, PIN_MISSILE
	db 40, PSYCHIC_M
	db 43, POISON_JAB
	db 47, LEECH_LIFE ; Cross Poison → TM move
	db 50, FEINT_ATTACK ; Sticky Web → new move
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUG_BITE ; evolution move
	db 1, FOCUS_ENERGY
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, WRAP ; Constrict → similar move
	db 5, ABSORB
	db 8, GLARE ; Infestation → new move
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	db 19, GROWTH ; Shadow Sneak → event move
	db 23, FURY_STRIKES ; Fury Swipes → similar move
	db 28, SUCKER_PUNCH
	db 32, MEAN_LOOK ; Spider Web → similar move
	db 37, AGILITY
	db 41, PIN_MISSILE
	db 46, PSYCHIC_M
	db 50, POISON_JAB
	db 55, LEECH_LIFE ; Cross Poison → TM move
	db 58, FEINT_ATTACK ; Sticky Web → new move
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	evolution EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, WATER_GUN ; Bubble → Water Gun
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ; Electro Ball → new move
	db 12, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, CONFUSE_RAY
	db 20, WATER_PULSE ; Bubble Beam → TM move
	db 23, SPARK
	db 28, PSYBEAM ; Signal Beam → egg move
	db 31, REVERSAL ; Flail → similar move
	db 34, THUNDERBOLT ; Discharge → TM move
	db 39, TAKE_DOWN
	db 42, RECOVER ; Aqua Ring → similar move
	db 45, ICE_BEAM ; Hydro Pump → TM move
	db 47, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	db 50, LIGHT_SCREEN ; Charge → event move
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN ; Bubble → Water Gun
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ; Electro Ball → new move
	db 12, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, CONFUSE_RAY
	db 20, WATER_PULSE ; Bubble Beam → TM move
	db 23, SPARK
	db 29, PSYBEAM ; Signal Beam → egg move
	db 33, REVERSAL ; Flail → similar move
	db 37, THUNDERBOLT ; Discharge → TM move
	db 43, TAKE_DOWN
	db 47, RECOVER ; Aqua Ring → similar move
	db 51, ICE_BEAM ; Hydro Pump → TM move
	db 54, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	db 58, LIGHT_SCREEN ; Charge → event move
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	evolution EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, SING ; Yawn → similar move
	db 17, ENCORE
	db 21, DIZZY_PUNCH ; Follow Me → new move
	db 25, HEAL_BELL ; Bestow → HGSS tutor move
	db 29, SOFTBOILED ; Wish → new move
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
	db 49, EXTRASENSORY ; Last Resort → egg move
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	evolution EVOLVE_ITEM, SHINY_STONE, TOGEKISS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 1, DISARM_VOICE ; evolution move
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, SING ; Yawn → similar move
	db 17, ENCORE
	db 21, DIZZY_PUNCH ; Follow Me → new move
	db 25, HEAL_BELL ; Bestow → HGSS tutor move
	db 29, SOFTBOILED ; Wish → new move
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
	db 49, EXTRASENSORY ; Last Resort → egg move
	db 0 ; no more level-up moves

TogekissEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISARM_VOICE ; evolution move
	db 1, HURRICANE ; Sky Attack → new move
	db 1, EXTREMESPEED
	db 1, AURA_SPHERE
	db 1, AIR_SLASH
	db 0 ; no more level-up moves

NatuEvosAttacks:
	evolution EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 12, SAFEGUARD ; Lucky Chant → event move
	db 17, HYPNOSIS ; Stored Power → new move
	db 20, PAIN_SPLIT ; Ominous Wind → HGSS tutor move
	db 23, CONFUSE_RAY
	db 28, RECOVER ; Wish → similar move
	db 33, PSYCHIC_M
	db 36, ROOST ; Miracle Eye → egg move
	db 39, HAZE ; Psycho Shift → egg move
	db 44, FUTURE_SIGHT
	db 47, HEX ; Power Swap + Guard Swap → new move
	db 50, SUCKER_PUNCH ; Me First → HGSS tutor move
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, AIR_SLASH ; evolution move
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 12, SAFEGUARD ; Lucky Chant → event move
	db 17, HYPNOSIS ; Stored Power → new move
	db 20, PAIN_SPLIT ; Ominous Wind → HGSS tutor move
	db 23, CONFUSE_RAY
	db 29, RECOVER ; Wish → similar move
	db 35, PSYCHIC_M
	db 39, ROOST ; Miracle Eye → egg move
	db 43, HAZE ; Psycho Shift → egg move
	db 49, FUTURE_SIGHT
	db 53, HEX ; Power Swap + Guard Swap → new move
	db 57, SUCKER_PUNCH ; Me First → HGSS tutor move
	db 0 ; no more level-up moves

MareepEvosAttacks:
	evolution EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, MUD_SLAP ; Cotton Spore → GSC TM move
	db 15, SPARK ; Charge → new move
	db 18, HEAL_BELL ; Take Down → HGSS tutor move
	db 22, TAKE_DOWN ; Electro Ball → Take Down
	db 25, CONFUSE_RAY
	db 29, POWER_GEM
	db 32, THUNDERBOLT ; Discharge → TM move
	db 36, SAFEGUARD ; Cotton Guard → egg move
	db 39, DAZZLINGLEAM ; Signal Beam → new move
	db 43, LIGHT_SCREEN
	db 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	evolution EVOLVE_LEVEL, 36, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, MUD_SLAP ; Cotton Spore → GSC TM move
	db 16, SPARK ; Charge → new move
	db 20, HEAL_BELL ; Take Down → HGSS tutor move
	db 25, TAKE_DOWN ; Electro Ball → Take Down
	db 29, CONFUSE_RAY
	db 34, POWER_GEM
	db 38, THUNDERBOLT ; Discharge → TM move
	db 43, SAFEGUARD ; Cotton Guard → egg move
	db 47, DAZZLINGLEAM ; Signal Beam → new move
	db 52, LIGHT_SCREEN
	db 56, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERPUNCH ; evolution move
	db 1, FIRE_PUNCH
	db 1, DRAGON_PULSE
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, MUD_SLAP ; Cotton Spore → GSC TM move
	db 16, SPARK ; Charge → new move
	db 20, HEAL_BELL ; Take Down → HGSS tutor move
	db 25, TAKE_DOWN ; Electro Ball → Take Down
	db 29, CONFUSE_RAY
	db 35, POWER_GEM
	db 40, THUNDERBOLT ; Discharge → TM move
	db 46, SAFEGUARD ; Cotton Guard → egg move
	db 51, DAZZLINGLEAM ; Signal Beam → new move
	db 57, LIGHT_SCREEN
	db 62, THUNDER
	db 65, DRAGON_PULSE
	db 71, OUTRAGE ; HGSS tutor move
	db 0 ; no more level-up moves

MarillEvosAttacks:
	evolution EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, GROWL ; Tail Whip → new move
	db 5, FORESIGHT ; Water Sport → egg move
	db 7, AQUA_JET ; Bubble → egg move
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLE_BEAM
	db 16, DIZZY_PUNCH ; Helping Hand → event move
	db 20, AQUA_TAIL
	db 23, PLAY_ROUGH
	db 28, SCARY_FACE ; Aqua Ring → event move
	db 31, RAIN_DANCE
	db 37, DOUBLE_EDGE
	db 40, CLOSE_COMBAT ; Superpower → similar move
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, GROWL ; Tail Whip → new move
	db 5, FORESIGHT ; Water Sport → egg move
	db 7, AQUA_JET ; Bubble → egg move
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLE_BEAM
	db 16, DIZZY_PUNCH ; Helping Hand → event move
	db 21, AQUA_TAIL
	db 25, PLAY_ROUGH
	db 31, SCARY_FACE ; Aqua Ring → event move
	db 35, RAIN_DANCE
	db 42, DOUBLE_EDGE
	db 46, CLOSE_COMBAT ; Superpower → similar move
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

BonslyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves



SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUBSTITUTE ; Copycat → event move
	db 5, REVERSAL ; Flail → similar move
	db 8, LOW_KICK
	db 12, LEER ; Rock Throw → new move
	db 15, ROCK_THROW ; Mimic → Rock Throw
	db 19, FEINT_ATTACK
	db 22, ANCIENTPOWER ; Rock Tomb → new move
	db 26, PROTECT ; Block → TM move
	db 29, ROCK_SLIDE
	db 33, COUNTER
	db 36, SUCKER_PUNCH
	db 40, DOUBLE_EDGE
	db 43, STONE_EDGE
	db 47, CLOSE_COMBAT ; Hammer Arm → similar move
	db 50, IRON_HEAD ; Head Smash → tutor move
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves


SkiploomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves


JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves


AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves


AmbipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves



SunkernEvosAttacks:
	evolution EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, SPLASH ; Growth → Hoppip move
	db 1, ABSORB
	db 4, GROWTH ; Ingrain → Growth
	db 7, DEFENSE_CURL ; Grass Whistle → TM move
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 19, PROTECT ; Worry Seed → TM move
	db 22, GIGA_DRAIN
	db 25, AGILITY ; Endeavor → new move
	db 28, HEALINGLIGHT ; Synthesis → similar move
	db 31, EARTH_POWER ; Natural Gift → tutor move
	db 34, SOLAR_BEAM
	db 37, DOUBLE_EDGE
	db 40, SUNNY_DAY
	db 43, SEED_BOMB
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH ; Growth → Hoppip move
	db 1, TACKLE ; Pound → similar move
	db 1, ABSORB
	db 4, GROWTH ; Ingrain → Growth
	db 7, DEFENSE_CURL ; Grass Whistle → TM move
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 19, PROTECT ; Worry Seed → TM move
	db 22, GIGA_DRAIN
	db 25, AGILITY ; Bullet Seed → TM move
	db 28, PETAL_DANCE
	db 31, EARTH_POWER ; Natural Gift → tutor move
	db 34, SOLAR_BEAM
	db 37, DOUBLE_EDGE
	db 40, SUNNY_DAY
	db 43, SEED_BOMB ; Leaf Storm → Sunkern move
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	evolution EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, BUG_BITE
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONIC_BOOM
	db 17, PROTECT ; Detect → similar move
	db 22, DRAGON_RAGE ; Supersonic → new move
	db 27, SUPERSONIC ; Uproar → Supersonic
	db 30, PURSUIT
	db 35, ANCIENTPOWER
	db 38, HYPNOSIS
	db 43, WING_ATTACK
	db 46, SCREECH
	db 49, U_TURN
	db 54, AIR_SLASH
	db 57, BUG_BUZZ
	db 62, DREAM_EATER ; event move
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGONBREATH ; evolution move
	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, BUG_BITE
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONIC_BOOM
	db 17, PROTECT ; Detect → similar move
	db 22, DRAGON_RAGE ; Supersonic → new move
	db 27, SUPERSONIC ; Uproar → Supersonic
	db 30, PURSUIT
	db 35, ANCIENTPOWER
	db 38, SLASH ; Feint → Slash
	db 43, WING_ATTACK ; Slash → Wing Attack
	db 46, SCREECH
	db 49, U_TURN
	db 54, AIR_SLASH
	db 57, BUG_BUZZ
	db 62, FLY ; new move
	db 0 ; no more level-up moves

WooperEvosAttacks:
	evolution EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, LEER ; Tail Whip → similar move
	db 5, MUD_SLAP ; Mud Sport → TM move
	db 9, SCARY_FACE ; Mud Shot → event move
	db 15, HEADBUTT ; Slam → tutor move
	db 19, RECOVER ; Mud Bomb → egg move
	db 23, AMNESIA
	db 29, BELLY_DRUM ; Yawn → event move
	db 33, EARTHQUAKE
	db 37, RAIN_DANCE
	db 43, HAZE
	db 47, AQUA_TAIL ; Muddy Water → event move
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER ; evolution move
	db 1, WATER_GUN
	db 1, LEER ; Tail Whip → similar move
	db 5, MUD_SLAP ; Mud Sport → TM move
	db 9, SCARY_FACE ; Mud Shot → event move
	db 15, HEADBUTT ; Slam → tutor move
	db 19, RECOVER ; Mud Bomb → egg move
	db 24, AMNESIA
	db 31, BELLY_DRUM ; Yawn → event move
	db 36, EARTHQUAKE
	db 41, RAIN_DANCE
	db 48, HAZE
	db 53, AQUA_TAIL ; Muddy Water → event move
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	evolution EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, ASTONISH
	db 5, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, THIEF ; Assurance → TM move
	db 31, SWAGGER ; Taunt → TM move
	db 35, FEINT_ATTACK
	db 41, MEAN_LOOK
	db 45, BATON_PASS ; Foul Play → XD move
	db 50, DRILL_PECK ; Tailwind → egg move
	db 55, SUCKER_PUNCH
	db 61, PERISH_SONG ; Torment → egg move
	db 65, BRAVE_BIRD ; Quash → egg move
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUCKER_PUNCH
	db 1, ASTONISH
	db 1, PURSUIT
	db 1, HAZE
	db 1, WING_ATTACK
	db 25, SWAGGER
	db 35, NASTY_PLOT
	db 45, NIGHT_SLASH ; Foul Play → Night Slash
	db 55, PERISH_SONG ; Night Slash → egg move
	db 65, BRAVE_BIRD ; Quash → egg move
	db 75, DARK_PULSE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	evolution EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TELEPORT ; Psywave → new move
	db 1, DISARM_VOICE ; new move
	db 5, CONFUSION ; Spite → new move
	db 10, ASTONISH
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 23, HEX
	db 28, PSYBEAM
	db 32, PAIN_SPLIT
	db 37, DESTINY_BOND ; Payback → egg move
	db 41, SHADOW_BALL
	db 46, PERISH_SONG
	db 50, DAZZLINGLEAM ; Grudge → TM move
	db 55, POWER_GEM
	db 62, NASTY_PLOT ; egg move
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWER_GEM
	db 1, SHADOW_BALL ; Phantom Force → TM move
	db 1, FLAMETHROWER ; Mystical Fire → TM move
	db 1, DAZZLINGLEAM ; Magical Leaf → TM move ; evolution move
	db 1, GROWL
	db 1, TELEPORT ; Psywave → new move
	db 1, DISARM_VOICE ; new move
	db 1, CONFUSION ; Spite → new move
	db 1, ASTONISH
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WynautEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves



WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, CHARM
	db 1, ENCORE
	db 1, RECOVER
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, TACKLE
	db 1, GROWL
	db 1, CONFUSION
	db 5, FORESIGHT ; Odor Sleuth → egg move
	db 10, PURSUIT ; Assurance → new move
	db 14, STOMP
	db 19, PSYBEAM
	db 23, AGILITY
	db 28, DOUBLE_KICK ; Double Hit → egg move
	db 32, ZEN_HEADBUTT
	db 37, CRUNCH
	db 41, BATON_PASS
	db 46, NASTY_PLOT
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	evolution EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
	db 9, BUG_BITE
	db 12, SUBSTITUTE ; Take Down → event move
	db 17, RAPID_SPIN
	db 20, DEFENSE_CURL ; Bide → TM move
	db 23, TAKE_DOWN ; Natural Gift → Take Down
	db 28, SPIKES
	db 31, REVERSAL ; Payback → new move
	db 34, EXPLOSION
	db 39, REFLECT ; Iron Defense → egg move
	db 42, GYRO_BALL
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLASH_CANNON ; Mirror Shot → TM move ; evolution move
	db 1, AGILITY ; Autotomize → similar move
	db 1, TOXIC_SPIKES
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
	db 9, BUG_BITE
	db 12, SUBSTITUTE ; Take Down → event move
	db 17, RAPID_SPIN
	db 20, DEFENSE_CURL ; Bide → TM move
	db 23, TAKE_DOWN ; Natural Gift → Take Down
	db 28, SPIKES
	db 32, REVERSAL ; Payback → new move
	db 36, EXPLOSION
	db 42, REFLECT ; Iron Defense → egg move
	db 46, GYRO_BALL
	db 50, DOUBLE_EDGE
	db 56, ZAP_CANNON
	db 60, IRON_HEAD ; Heavy Slam → new move
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 3, ROLLOUT
	db 6, ASTONISH ; Spite → egg move
	db 8, PURSUIT
	db 11, SCREECH
	db 13, MUD_SLAP
	db 16, FURY_STRIKES ; Yawn → event move (Fury Attack)
	db 18, ANCIENTPOWER
	db 21, BODY_SLAM
	db 23, DRAGON_RAGE ; Drill Run → new move
	db 26, ROOST
	db 28, TAKE_DOWN
	db 31, DRAGON_DANCE ; Coil → new move
	db 33, DIG
	db 36, GLARE
	db 38, DOUBLE_EDGE
	db 41, EARTHQUAKE ; Endeavor → TM move
	db 43, AIR_SLASH
	db 46, HEX ; Dragon Rush → egg move
	db 48, ENDURE
	db 51, REVERSAL ; Flail → similar move
	db 0 ; no more level-up moves

GligarEvosAttacks:
	;evolution EVOLVE_HOLDING, RAZOR_FANG, GLISCOR
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, MUD_SLAP ; Sand Attack → similar move
	db 7, DEFENSE_CURL ; Harden → similar move
	db 10, QUICK_ATTACK ; Knock Off → Quick Attack
	db 13, WING_ATTACK ; Quick Attack → egg move
	db 16, BUG_BITE ; Fury Cutter → similar move
	db 19, FEINT_ATTACK
	db 22, ACROBATICS
	db 27, SLASH
	db 30, U_TURN
	db 35, SCREECH
	db 40, X_SCISSOR
	db 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	db 50, SWORDS_DANCE
	db 55, NIGHT_SLASH ; Guillotine → egg move
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_JAB
	db 4, MUD_SLAP ; Sand Attack → similar move
	db 7, DEFENSE_CURL ; Harden → similar move
	db 10, QUICK_ATTACK ; Knock Off → Quick Attack
	db 13, WING_ATTACK ; Quick Attack → egg move
	db 16, BUG_BITE ; Fury Cutter → similar move
	db 19, FEINT_ATTACK
	db 22, ACROBATICS
	db 27, SLASH ; Night Slash → Gligar move
	db 30, U_TURN
	db 35, SCREECH
	db 40, X_SCISSOR
	db 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	db 50, SWORDS_DANCE
	db 55, NIGHT_SLASH ; Guillotine → Night Slash
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	evolution EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, LEER ; Tail Whip → similar move
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 25, ROAR
	db 31, RAGE
	db 37, PLAY_ROUGH
	db 43, DOUBLE_EDGE ; Payback → event move
	db 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, LEER ; Tail Whip → similar move
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 27, ROAR
	db 35, RAGE
	db 43, PLAY_ROUGH
	db 51, DOUBLE_EDGE ; Payback → event move
	db 59, CRUNCH
	db 67, OUTRAGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SPIKES
	db 1, TACKLE
	db 1, POISON_STING
	db 5, DEFENSE_CURL ; Harden → TM move
	db 9, MINIMIZE
	db 13, BUBBLE_BEAM ; Bubble → similar move
	db 17, ROLLOUT
	db 21, TOXIC_SPIKES
	db 25, PAIN_SPLIT ; Stockpile + Spit Up → HGSS move tutor
	db 29, REVERSAL ; Revenge → new move
	db 33, WATER_PULSE ; Brine → TM move
	db 37, PIN_MISSILE
	db 41, TAKE_DOWN
	db 45, AQUA_TAIL
	db 49, POISON_JAB
	db 53, DESTINY_BOND
	db 57, HYDRO_PUMP
	db 60, DOUBLE_EDGE ; Fell Stinger → event move
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves


HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, LEER
	db 1, HORN_ATTACK
	db 1, ENDURE
	db 7, BUG_BITE ; Feint → HGSS tutor move
	db 10, AERIAL_ACE
	db 16, LOW_KICK ; Chip Away → HGSS tutor move
	db 19, COUNTER
	db 25, FURY_STRIKES ; Fury Attack → similar move
	db 28, SEISMIC_TOSS ; Brick Break → tutor move
	db 31, PIN_MISSILE
	db 34, TAKE_DOWN
	db 37, MEGAHORN
	db 43, CLOSE_COMBAT
	db 46, REVERSAL
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	evolution EVOLVE_HOLDING, RAZOR_CLAW, WEAVILE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, BITE ; Taunt → egg move
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, ICE_SHARD ; Icy Wind → Ice Shard
	db 16, FURY_STRIKES ; Fury Swipes → similar move
	db 20, AGILITY
	db 22, METAL_CLAW
	db 25, HONE_CLAWS
	db 28, ICICLE_CRASH ; Beat Up → egg move
	db 32, SCREECH
	db 35, SLASH
	db 40, HEALINGLIGHT ; Snatch → event move (Moonlight)
	db 44, X_SCISSOR ; Punishment → TM move
	db 47, CRUNCH ; Ice Shard → new move
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, BITE ; Taunt → egg move
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, ICE_SHARD ; Icy Wind → Ice Shard
	db 16, FURY_STRIKES ; Fury Swipes → similar move
	db 20, NASTY_PLOT
	db 22, METAL_CLAW
	db 25, HONE_CLAWS
	db 28, ICICLE_CRASH ; Fling → egg move
	db 32, SCREECH
	db 35, NIGHT_SLASH
	db 40, HEALINGLIGHT ; Snatch → event move (Moonlight)
	db 44, X_SCISSOR ; Punishment → TM move
	db 47, CRUNCH ; Dark Pulse → new move
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	evolution EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, THIEF ; Covet → TM move
	db 1, SCRATCH
	db 1, GROWL ; Baby-Doll Eyes → similar move
	db 1, LICK
	db 1, FOCUS_ENERGY ; Fake Tears → egg move
	db 8, FURY_STRIKES ; Fury Swipes → similar move
	db 15, FEINT_ATTACK
	db 22, BELLY_DRUM ; Sweet Scent → egg move
	db 25, PLAY_ROUGH ; Play Nice → egg move
	db 29, SLASH
	db 36, CHARM
	db 43, REST
	db 43, CRUNCH ; Snore → egg move
	db 50, THRASH
	db 57, CLOSE_COMBAT ; Fling → new move
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUNK_SHOT ; HGSS tutor move
	db 1, THIEF ; Covet → TM move
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FOCUS_ENERGY ; Fake Tears → egg move
	db 8, FURY_STRIKES ; Fury Swipes → similar move
	db 15, FEINT_ATTACK
	db 22, BELLY_DRUM ; Sweet Scent → egg move
	db 25, PLAY_ROUGH ; Play Nice → egg move
	db 29, SLASH
	db 38, SCARY_FACE
	db 47, REST
	db 49, CRUNCH ; Snore → egg move
	db 58, THRASH
	db 67, CLOSE_COMBAT ; Hammer Arm → new move
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	evolution EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, MUD_SLAP ; Smog → TM move
	db 6, EMBER
	db 8, ROCK_THROW
	db 13, DEFENSE_CURL ; Harden → similar move
	db 15, FIRE_SPIN ; Incinerate → new move
	db 20, SMOKESCREEN ; Clear Smog → egg move
	db 22, ANCIENTPOWER
	db 27, FLAME_WHEEL ; Flame Burst → new move
	db 29, ROCK_SLIDE
	db 34, PAIN_SPLIT ; Lava Plume → HGSS tutor move
	db 36, AMNESIA
	db 41, BODY_SLAM
	db 43, RECOVER
	db 48, FLAMETHROWER
	db 50, EARTH_POWER
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_DANCE ; Shell Smash → similar move ; evolution move
	db 1, MUD_SLAP ; Smog → TM move
	db 6, EMBER
	db 8, ROCK_THROW
	db 13, DEFENSE_CURL ; Harden → similar move
	db 15, FIRE_SPIN ; Incinerate → new move
	db 20, SMOKESCREEN ; Clear Smog → egg move
	db 22, ANCIENTPOWER
	db 27, FLAME_WHEEL ; Flame Burst → new move
	db 29, ROCK_SLIDE
	db 34, PAIN_SPLIT ; Lava Plume → HGSS tutor move
	db 36, AMNESIA
	db 43, BODY_SLAM
	db 47, RECOVER
	db 54, FLAMETHROWER
	db 58, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	evolution EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 5, BITE ; Mud Sport → egg move
	db 8, ICE_SHARD ; Powder Snow → Ice Shard
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MAGNITUDE ; Mud Bomb → new move
	db 21, ICY_WIND
	db 24, ICICLE_CRASH ; Ice Shard → egg move
	db 28, TAKE_DOWN
	db 35, BULLDOZE ; Mist → TM move
	db 37, REVERSAL ; Earthquake → similar move
	db 40, EARTHQUAKE ; Flail → Earthquake
	db 44, BLIZZARD
	db 48, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	evolution EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, FURY_STRIKES ; evolution move (Fury Attack)
	db 1, PECK
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 5, BITE ; Mud Sport → egg move
	db 8, ICE_SHARD ; Powder Snow → Ice Shard
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MAGNITUDE ; Mud Bomb → new move
	db 21, ICY_WIND
	db 24, ICICLE_CRASH ; Ice Fang → egg move
	db 28, TAKE_DOWN
	db 37, BULLDOZE ; Mist → TM move
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, AMNESIA
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, PECK
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 5, BITE ; Mud Sport → egg move
	db 8, ICE_SHARD ; Powder Snow → Ice Shard
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MAGNITUDE ; Mud Bomb → new move
	db 21, HAIL
	db 24, AVALANCHE ; Ice Fang → egg move
	db 28, TAKE_DOWN
	db 33, FURY_STRIKES ; Double Hit → Piloswine move
	db 37, BULLDOZE ; Mist → TM move
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, SCARY_FACE
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 4, WATER_GUN ; Bubble → similar move
	db 8, RECOVER
	db 10, BUBBLE_BEAM
	db 13, SAFEGUARD ; Refresh → egg move
	db 17, ANCIENTPOWER
	db 20, ICICLE_SPEAR ; Spike Cannon → new move
	db 23, CONFUSE_RAY ; Lucky Chant → egg move
	db 27, SELFDESTRUCT ; Brine → new move
	db 29, BARRIER ; Iron Defense → similar move
	db 31, ROCK_BLAST
	db 35, ENDURE
	db 38, RECOVER ; Aqua Ring → similar move
	db 41, POWER_GEM
	db 45, MIRROR_COAT
	db 47, EARTH_POWER
	db 50, REVERSAL ; Flail → similar move
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	evolution EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 6, FORESIGHT ; Lock-On → new move
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLE_BEAM
	db 22, FOCUS_ENERGY
	db 26, WATER_PULSE
	db 30, FLAMETHROWER ; Signal Beam → TM move
	db 34, ICE_BEAM
	db 38, SEED_BOMB ; Bullet Seed → tutor move
	db 42, GUNK_SHOT ; Hydro Pump → new move
	db 46, HYDRO_PUMP ; Hyper Beam → Hydro Pump
	db 50, AURA_SPHERE ; Soak → new move
	db 54, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, OCTAZOOKA ; evolution move
	db 1, ROCK_BLAST
	db 1, POWER_WHIP ; new move
	db 1, WATER_GUN
	db 6, FORESIGHT ; Constrict → new move
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLE_BEAM
	db 22, FOCUS_ENERGY
	db 26, WRAP ; Wring Out → new move
	db 28, WATER_PULSE
	db 34, FLAMETHROWER ; Signal Beam → TM move
	db 40, ICE_BEAM
	db 46, SEED_BOMB ; Bullet Seed → tutor move
	db 52, GUNK_SHOT ; Hydro Pump → new move
	db 58, HYDRO_PUMP ; Hyper Beam → Hydro Pump
	db 64, AURA_SPHERE ; Soak → new move
	db 70, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves


MantykeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves


MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST ; event move
	db 1, TACKLE
	db 1, WATER_GUN ; Bubble → similar move
	db 3, SUPERSONIC
	db 7, BUBBLE_BEAM
	db 11, CONFUSE_RAY
	db 14, WING_ATTACK
	db 16, HEADBUTT
	db 19, WATER_PULSE
	db 23, AQUA_JET ; Wide Guard → new move
	db 27, TAKE_DOWN
	db 32, AGILITY
	db 36, AIR_SLASH
	db 39, ROOST ; Aqua Ring → similar move
	db 46, MIRROR_COAT ; Bounce → Dream World move
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 6, MUD_SLAP ; Sand Attack → similar move
	db 9, BITE ; Metal Claw → new move
	db 12, METAL_CLAW ; Air Cutter → Metal Claw
	db 17, FURY_STRIKES ; Fury Attack → similar move
	db 20, PURSUIT ; Feint → egg move
	db 23, SWIFT
	db 28, SPIKES
	db 31, AGILITY
	db 34, STEEL_WING
	db 39, SLASH
	db 42, SCREECH ; Metal Sound → similar move
	db 45, AIR_SLASH
	db 50, DRILL_PECK ; Autotomize → egg move
	db 53, NIGHT_SLASH
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	evolution EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, PURSUIT ; Howl → egg move
	db 8, SMOKESCREEN ; Smog → new move
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT ; Odor Sleuth → similar move
	db 25, SUPER_FANG ; Beat Up → HGSS tutor move
	db 28, FIRE_SPIN ; Fire Fang → egg move
	db 32, FEINT_ATTACK
	db 37, DESTINY_BOND ; Embargo → egg move
	db 40, WILL_O_WISP ; Foul Play → egg move
	db 44, FLAMETHROWER
	db 49, CRUNCH
	db 52, NASTY_PLOT
	db 56, DARK_PULSE ; Inferno → TM move
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, PURSUIT ; Howl → egg move
	db 8, SMOKESCREEN ; Smog → new move
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT ; Odor Sleuth → similar move
	db 26, SUPER_FANG ; Beat Up → HGSS tutor move
	db 30, FIRE_SPIN ; Fire Fang → egg move
	db 35, FEINT_ATTACK
	db 41, DESTINY_BOND ; Embargo → egg move
	db 45, WILL_O_WISP ; Foul Play → egg move
	db 50, FLAMETHROWER
	db 56, CRUNCH
	db 60, NASTY_PLOT
	db 65, DARK_PULSE ; Inferno → TM move
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	evolution EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 1, TACKLE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 6, REVERSAL ; Flail → similar move
	db 10, ROLLOUT
	db 15, ENCORE ; Natural Gift → event move
	db 19, ENDURE
	db 24, TAKE_DOWN ; Slam → Take Down
	db 28, BODY_SLAM ; Take Down → TM move
	db 33, CHARM
	db 37, PLAY_ROUGH ; Last Resort → egg move
	db 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_STRIKES ; evolution move
	db 1, GUNK_SHOT ; HGSS tutor move
	db 1, HORN_ATTACK
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 1, BULLDOZE
	db 6, RAPID_SPIN
	db 10, ROLLOUT
	db 15, IRON_TAIL ; Assurance → TM move
	db 19, KNOCK_OFF
	db 24, ANCIENTPOWER ; Slam → HGSS tutor move
	db 30, MAGNITUDE
	db 37, SCARY_FACE
	db 43, EARTHQUAKE
	db 50, GIGA_IMPACT
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves


SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 8, STOMP
	db 11, MILK_DRINK
	db 15, DIZZY_PUNCH ; Bide → egg move
	db 19, ROLLOUT
	db 24, BODY_SLAM
	db 29, ZEN_HEADBUTT
	db 35, SEISMIC_TOSS ; Captivate → egg move
	db 41, GYRO_BALL
	db 48, HEAL_BELL
	db 50, REVERSAL ; Wake-Up Slap → egg move
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, THUNDERSHOCK
	db 15, ROAR
	db 22, QUICK_ATTACK
	db 29, SPARK
	db 36, REFLECT
	db 43, CRUNCH
	db 50, WILD_CHARGE ; Thunder Fang → TM move
	db 57, EXTREMESPEED ; Discharge → event move
	db 64, EXTRASENSORY
	db 71, RAIN_DANCE
	db 78, CALM_MIND
	db 85, AURA_SPHERE ; Thunder → event move
	db 92, THUNDER
	db 99, HIDDEN_POWER ; TM move
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, EMBER
	db 15, ROAR
	db 22, FIRE_SPIN
	db 29, STOMP
	db 36, FLAMETHROWER
	db 43, SWAGGER
	db 50, FLAME_WHEEL ; Fire Fang → new move
	db 57, EXTREMESPEED ; Lava Plume → event move
	db 64, EXTRASENSORY
	db 71, FIRE_BLAST
	db 78, CALM_MIND
	db 85, FLARE_BLITZ ; Eruption → event move
	db 92, SACRED_FIRE
	db 99, HIDDEN_POWER ; TM move
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, BUBBLE_BEAM
	db 15, RAIN_DANCE
	db 22, GUST
	db 29, AURORA_BEAM
	db 36, LIGHT_SCREEN ; Mist → new move
	db 43, MIRROR_COAT
	db 50, AIR_SLASH ; Ice Fang → event move
	db 57, EXTREMESPEED ; Tailwind → event move
	db 64, EXTRASENSORY
	db 71, HYDRO_PUMP
	db 78, CALM_MIND
	db 85, HYPER_BEAM ; Blizzard → TM move
	db 92, BLIZZARD
	db 99, HIDDEN_POWER ; TM move
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	evolution EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, RAGE ; Chip Away → event move
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 32, DARK_PULSE
	db 37, ANCIENTPOWER ; Payback → HGSS tutor move
	db 41, CRUNCH
	db 46, EARTHQUAKE
	db 50, STONE_EDGE
	db 55, OUTRAGE ; Hyper Beam → HGSS tutor move
	db 61, HYPER_BEAM
	db 68, CLOSE_COMBAT ; new move
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	evolution EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL ; evolution move
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, RAGE ; Chip Away → event move
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 34, DARK_PULSE
	db 41, ANCIENTPOWER ; Payback → HGSS tutor move
	db 47, CRUNCH
	db 54, EARTHQUAKE
	db 60, STONE_EDGE
	db 67, OUTRAGE ; Hyper Beam → HGSS tutor move
	db 75, HYPER_BEAM
	db 84, CLOSE_COMBAT ; new move
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, STOMP ; evolution move
	db 1, LOW_KICK ; HGSS tutor move
	db 1, DRAGONBREATH ; GSC TM move
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, RAGE ; Chip Away → event move
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 34, DARK_PULSE
	db 41, ANCIENTPOWER ; Payback → HGSS tutor move
	db 47, CRUNCH
	db 54, EARTHQUAKE
	db 63, STONE_EDGE
	db 73, OUTRAGE ; Hyper Beam → HGSS tutor move
	db 82, HYPER_BEAM
	db 92, CLOSE_COMBAT ; new move
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROAR ; Whirlwind → similar move
	db 9, GUST
	db 15, DRAGONBREATH ; Dragon Rush → GSC TM move
	db 23, EXTRASENSORY
	db 29, RAIN_DANCE
	db 37, HYDRO_PUMP
	db 43, DRAGON_PULSE ; Aeroblast → TM move
	db 50, AEROBLAST ; Punishment → Aeroblast
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, REFLECT ; Natural Gift → TM move
	db 93, CALM_MIND
	db 99, HURRICANE ; Sky Attack → new move
	db 0 ; no more level-up moves

Ho_OhEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROAR ; Whirlwind → similar move
	db 9, GUST
	db 15, DRAGONBREATH ; Brave Bird → GSC TM move
	db 23, EXTRASENSORY
	db 29, SUNNY_DAY
	db 37, FIRE_BLAST
	db 43, SOLAR_BEAM ; Sacred Fire → Solar Beam
	db 50, SACRED_FIRE ; Punishment → Sacred Fire
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, LIGHT_SCREEN ; Natural Gift → TM move
	db 93, CALM_MIND
	db 99, BRAVE_BIRD ; Sky Attack → Brave Bird
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, METRONOME ; Heal Bell → new move
	db 10, SAFEGUARD
	db 19, ENERGY_BALL ; Magical Leaf → TM move
	db 28, ANCIENTPOWER
	db 37, BATON_PASS
	db 46, MOONBLAST ; Natural Gift → new move
	db 55, LIGHT_SCREEN ; Heal Block → TM move
	db 64, FUTURE_SIGHT
	db 73, HEAL_BELL ; Healing Wish → Heal Bell
	db 82, NASTY_PLOT ; Leaf Storm → event move
	db 91, PERISH_SONG
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

MagbyEvosAttacks:
	evolution EVOLVE_LEVEL, 30, MAGMAR
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

ElekidEvosAttacks:
	evolution EVOLVE_LEVEL, 30, ELECTABUZZ
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

SmoochumEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
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

TyrogueEvosAttacks:
	evolution EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	evolution EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	evolution EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAGE ; Fake Out → event move
	db 1, FORESIGHT
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	evolution EVOLVE_HOLDING, DUBIOUS_DISC, PORYGON_Z
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

IgglybuffEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db 0 ; no more evolutions
    db TACKLE
	db 0 ; no more level-up moves

PichuEvosAttacks:
	evolution EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
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
