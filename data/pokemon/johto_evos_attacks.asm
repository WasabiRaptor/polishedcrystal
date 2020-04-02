INCLUDE "constants.asm"

SECTION "Johto Evolutions and Attacks", ROMX

INCLUDE "data/pokemon/johto/evolution_moves.asm"

INCLUDE "data/pokemon/johto/evos_attacks_pointers.asm"
INCLUDE "data/pokemon/johto/evos_attacks_pointer_table.asm"

JohtoEvosAttacks::

ChikoritaEvosAttacks:
	evolution EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, GROWL
	learnmove 6, RAZOR_LEAF
	learnmove 9, POISONPOWDER
	learnmove 17, REFLECT
	learnmove 20, DISARMING_VOICE ; Magical Leaf → new move
	learnmove 23, ENERGY_BALL ; Natural Gift → tutor move
	learnmove 28, ANCIENTPOWER ; Sweet Scent → HGSS tutor move
	learnmove 31, LIGHT_SCREEN
	learnmove 34, BODY_SLAM
	learnmove 39, SAFEGUARD
	learnmove 42, PLAY_ROUGH ; Aromatherapy → new move
	learnmove 45, SOLAR_BEAM
	learnmove 48, HEAL_BELL ; Aromatherapy → similar move
	learnmove 51, OUTRAGE ; HGSS tutor move
	learnmove 56, MOONBLAST ; new move
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	evolution EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, GROWL
	learnmove 6, RAZOR_LEAF
	learnmove 9, POISONPOWDER
	learnmove 18, REFLECT
	learnmove 22, DISARMING_VOICE ; Magical Leaf → new move
	learnmove 26, ENERGY_BALL ; Natural Gift → tutor move
	learnmove 32, ANCIENTPOWER ; Sweet Scent → HGSS tutor move
	learnmove 36, LIGHT_SCREEN
	learnmove 40, BODY_SLAM
	learnmove 43, SAFEGUARD
	learnmove 47, PLAY_ROUGH ; Aromatherapy → new move
	learnmove 51, SOLAR_BEAM
	learnmove 54, HEAL_BELL ; Aromatherapy → similar move
	learnmove 58, OUTRAGE ; HGSS tutor move
	learnmove 64, MOONBLAST ; new move
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, PETAL_DANCE ; evolution move
	learnmove 1, TACKLE
	learnmove 1, GROWL
	learnmove 6, RAZOR_LEAF
	learnmove 9, POISONPOWDER
	learnmove 18, REFLECT
	learnmove 22, DISARMING_VOICE ; Magical Leaf → new move
	learnmove 26, ENERGY_BALL ; Natural Gift → tutor move
	learnmove 34, ANCIENTPOWER ; Sweet Scent → HGSS tutor move
	learnmove 40, LIGHT_SCREEN
	learnmove 46, BODY_SLAM
	learnmove 50, SAFEGUARD
	learnmove 56, PLAY_ROUGH ; Aromatherapy → new move
	learnmove 62, SOLAR_BEAM
	learnmove 66, HEAL_BELL ; Aromatherapy → similar move
	learnmove 72, OUTRAGE ; HGSS tutor move
	learnmove 80, MOONBLAST ; new move
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	evolution EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, LEER
	learnmove 6, SMOKESCREEN
	learnmove 10, EMBER
	learnmove 13, QUICK_ATTACK
	learnmove 19, FLAME_WHEEL
	learnmove 22, DEFENSE_CURL
	learnmove 28, DIG ; Flame Charge → TM move
	learnmove 31, SWIFT
	learnmove 37, REVERSAL ; Lava Plume → egg move
	learnmove 40, FLAMETHROWER
	learnmove 46, EARTH_POWER ; Inferno → new move
	learnmove 49, ROLLOUT
	learnmove 55, DOUBLE_EDGE
	learnmove 58, EARTHQUAKE ; Burn Up → TM move
	learnmove 64, FLARE_BLITZ ; Eruption → egg move
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	evolution EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, LEER
	learnmove 6, SMOKESCREEN
	learnmove 10, EMBER
	learnmove 13, QUICK_ATTACK
	learnmove 20, FLAME_WHEEL
	learnmove 24, DEFENSE_CURL
	learnmove 31, SWIFT
	learnmove 35, DIG ; Flame Charge → TM move
	learnmove 42, REVERSAL ; Lava Plume → egg move
	learnmove 46, FLAMETHROWER
	learnmove 53, EARTH_POWER ; Inferno → new move
	learnmove 57, ROLLOUT
	learnmove 64, DOUBLE_EDGE
	learnmove 68, EARTHQUAKE ; Burn Up → TM move
	learnmove 75, FLARE_BLITZ ; Eruption → egg move
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, FIRE_PUNCH ; evolution move
	learnmove 1, TACKLE
	learnmove 1, LEER
	learnmove 6, SMOKESCREEN
	learnmove 10, EMBER
	learnmove 13, QUICK_ATTACK
	learnmove 20, FLAME_WHEEL
	learnmove 24, DEFENSE_CURL
	learnmove 31, SWIFT
	learnmove 35, DIG ; Flame Charge → TM move
	learnmove 43, REVERSAL ; Lava Plume → egg move
	learnmove 48, FLAMETHROWER
	learnmove 56, EARTH_POWER ; Inferno → new move
	learnmove 61, ROLLOUT
	learnmove 69, DOUBLE_EDGE
	learnmove 74, EARTHQUAKE ; Burn Up → TM move
	learnmove 81, FLARE_BLITZ ; Eruption → egg move
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	evolution EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, LEER
	learnmove 6, WATER_GUN
	learnmove 8, RAGE
	learnmove 13, BITE
	learnmove 15, SCARY_FACE
	learnmove 20, METAL_CLAW ; Ice Fang → egg move
	learnmove 22, REVERSAL ; Flail → similar move
	learnmove 27, AGILITY ; Feraligatr move
	learnmove 29, CRUNCH
	learnmove 34, ANCIENTPOWER ; Chip Away → HGSS tutor move
	learnmove 36, SLASH
	learnmove 41, SCREECH
	learnmove 43, THRASH
	learnmove 48, AQUA_TAIL
	learnmove 50, CLOSE_COMBAT ; Superpower → similar move
	learnmove 56, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	evolution EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, LEER
	learnmove 6, WATER_GUN
	learnmove 8, RAGE
	learnmove 13, BITE
	learnmove 15, SCARY_FACE
	learnmove 21, METAL_CLAW ; Ice Fang → egg move
	learnmove 24, REVERSAL ; Flail → similar move
	learnmove 30, AGILITY ; Feraligatr move
	learnmove 33, CRUNCH
	learnmove 39, ANCIENTPOWER ; Chip Away → HGSS tutor move
	learnmove 42, SLASH
	learnmove 48, SCREECH
	learnmove 51, THRASH
	learnmove 57, AQUA_TAIL
	learnmove 60, CLOSE_COMBAT ; Superpower → similar move
	learnmove 66, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, NIGHT_SLASH ; evolution move
	learnmove 1, SCRATCH
	learnmove 1, LEER
	learnmove 6, WATER_GUN
	learnmove 8, RAGE
	learnmove 13, BITE
	learnmove 15, SCARY_FACE
	learnmove 21, METAL_CLAW ; Ice Fang → egg move
	learnmove 24, REVERSAL ; Flail → similar move
	learnmove 32, AGILITY
	learnmove 37, CRUNCH
	learnmove 45, ANCIENTPOWER ; Chip Away → HGSS tutor move
	learnmove 50, SLASH
	learnmove 56, SCREECH
	learnmove 62, THRASH
	learnmove 68, OUTRAGE ; HGSS tutor move
	learnmove 73, AQUA_TAIL
	learnmove 78, CLOSE_COMBAT ; Superpower → similar move
	learnmove 84, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	evolution EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, FORESIGHT
	learnmove 4, DEFENSE_CURL
	learnmove 7, QUICK_ATTACK
	learnmove 13, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 16, DIZZY_PUNCH ; Helping Hand → event move
	learnmove 19, SUPER_FANG ; Follow Me → HGSS tutor move
	learnmove 25, HEADBUTT ; Slam → tutor move
	learnmove 28, REST
	learnmove 31, SUCKER_PUNCH
	learnmove 36, AMNESIA
	learnmove 39, BATON_PASS
	learnmove 42, SLASH ; Me First → egg move
	learnmove 47, HYPER_VOICE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, FORESIGHT
	learnmove 1, AGILITY ; evolution move
	learnmove 4, DEFENSE_CURL
	learnmove 7, QUICK_ATTACK
	learnmove 13, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 17, DIZZY_PUNCH ; Helping Hand → event move
	learnmove 21, SUPER_FANG ; Follow Me → HGSS tutor move
	learnmove 28, HEADBUTT ; Slam → tutor move
	learnmove 32, REST
	learnmove 36, SUCKER_PUNCH
	learnmove 42, AMNESIA
	learnmove 46, BATON_PASS
	learnmove 50, SLASH ; Me First → egg move
	learnmove 56, HYPER_VOICE
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	evolution EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, GROWL
	learnmove 1, FORESIGHT
	learnmove 4, HYPNOSIS
	learnmove 7, PECK
	learnmove 10, CONFUSION
	learnmove 13, NIGHT_SHADE ; Echoed Voice → event move
	learnmove 16, ZEN_HEADBUTT
	learnmove 19, HEX ; Psycho Shift → new move
	learnmove 22, WING_ATTACK ; Extrasensory → egg move
	learnmove 25, TAKE_DOWN
	learnmove 28, REFLECT
	learnmove 31, AIR_SLASH
	learnmove 34, EXTRASENSORY ; Uproar → Extrasensory
	learnmove 37, ROOST
	learnmove 40, HYPER_VOICE ; Moonblast → tutor move
	learnmove 43, MOONBLAST ; Synchronoise → Moonblast
	learnmove 46, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DREAM_EATER
	learnmove 1, TACKLE
	learnmove 1, GROWL
	learnmove 1, FORESIGHT
	learnmove 4, HYPNOSIS
	learnmove 7, PECK
	learnmove 10, CONFUSION
	learnmove 13, NIGHT_SHADE ; Echoed Voice → event move
	learnmove 16, ZEN_HEADBUTT
	learnmove 19, HEX ; Psycho Shift → new move
	learnmove 23, WING_ATTACK ; Extrasensory → egg move
	learnmove 27, TAKE_DOWN
	learnmove 31, REFLECT
	learnmove 35, AIR_SLASH
	learnmove 39, EXTRASENSORY ; Uproar → Extrasensory
	learnmove 43, ROOST
	learnmove 47, HYPER_VOICE ; Moonblast → tutor move
	learnmove 51, MOONBLAST ; Synchronoise → Moonblast
	learnmove 55, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	evolution EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 5, SUPERSONIC
	learnmove 8, SWIFT
	learnmove 12, LIGHT_SCREEN
	learnmove 12, REFLECT
	learnmove 12, SAFEGUARD
	learnmove 15, MACH_PUNCH
	learnmove 19, BARRIER ; Silver Wind → event move
	learnmove 22, DIZZY_PUNCH ; Comet Punch → new move
	learnmove 26, BATON_PASS
	learnmove 29, AGILITY
	learnmove 33, BUG_BUZZ
	learnmove 36, AIR_SLASH
	learnmove 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SWORDS_DANCE ; evolution move
	learnmove 1, TACKLE
	learnmove 5, SUPERSONIC
	learnmove 8, SWIFT
	learnmove 12, LIGHT_SCREEN
	learnmove 12, REFLECT
	learnmove 12, SAFEGUARD
	learnmove 15, MACH_PUNCH
	learnmove 20, BARRIER ; Silver Wind → event move
	learnmove 24, DIZZY_PUNCH ; Comet Punch → new move
	learnmove 29, BATON_PASS
	learnmove 33, AGILITY
	learnmove 38, BUG_BUZZ
	learnmove 42, AIR_SLASH
	learnmove 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	evolution EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	learnmove 1, POISON_STING
	learnmove 1, STRING_SHOT
	learnmove 1, WRAP ; Constrict → similar move
	learnmove 5, ABSORB
	learnmove 8, GLARE ; Infestation → new move
	learnmove 12, SCARY_FACE
	learnmove 15, NIGHT_SHADE
	learnmove 19, GROWTH ; Shadow Sneak → event move
	learnmove 22, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 26, SUCKER_PUNCH
	learnmove 29, MEAN_LOOK ; Spider Web → similar move
	learnmove 33, AGILITY
	learnmove 36, PIN_MISSILE
	learnmove 40, PSYCHIC_M
	learnmove 43, POISON_JAB
	learnmove 47, LEECH_LIFE ; Cross Poison → TM move
	learnmove 50, FEINT_ATTACK ; Sticky Web → new move
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, BUG_BITE ; evolution move
	learnmove 1, FOCUS_ENERGY
	learnmove 1, POISON_STING
	learnmove 1, STRING_SHOT
	learnmove 1, WRAP ; Constrict → similar move
	learnmove 5, ABSORB
	learnmove 8, GLARE ; Infestation → new move
	learnmove 12, SCARY_FACE
	learnmove 15, NIGHT_SHADE
	learnmove 19, GROWTH ; Shadow Sneak → event move
	learnmove 23, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 28, SUCKER_PUNCH
	learnmove 32, MEAN_LOOK ; Spider Web → similar move
	learnmove 37, AGILITY
	learnmove 41, PIN_MISSILE
	learnmove 46, PSYCHIC_M
	learnmove 50, POISON_JAB
	learnmove 55, LEECH_LIFE ; Cross Poison → TM move
	learnmove 58, FEINT_ATTACK ; Sticky Web → new move
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	evolution EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	learnmove 1, WATER_GUN ; Bubble → Water Gun
	learnmove 1, SUPERSONIC
	learnmove 6, THUNDER_WAVE
	learnmove 9, THUNDERSHOCK ; Electro Ball → new move
	learnmove 12, BUBBLEBEAM ; Water Gun → Bubble Beam
	learnmove 17, CONFUSE_RAY
	learnmove 20, WATER_PULSE ; Bubble Beam → TM move
	learnmove 23, SPARK
	learnmove 28, PSYBEAM ; Signal Beam → egg move
	learnmove 31, REVERSAL ; Flail → similar move
	learnmove 34, THUNDERBOLT ; Discharge → TM move
	learnmove 39, TAKE_DOWN
	learnmove 42, RECOVER ; Aqua Ring → similar move
	learnmove 45, ICE_BEAM ; Hydro Pump → TM move
	learnmove 47, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	learnmove 50, LIGHT_SCREEN ; Charge → event move
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, WATER_GUN ; Bubble → Water Gun
	learnmove 1, SUPERSONIC
	learnmove 6, THUNDER_WAVE
	learnmove 9, THUNDERSHOCK ; Electro Ball → new move
	learnmove 12, BUBBLEBEAM ; Water Gun → Bubble Beam
	learnmove 17, CONFUSE_RAY
	learnmove 20, WATER_PULSE ; Bubble Beam → TM move
	learnmove 23, SPARK
	learnmove 29, PSYBEAM ; Signal Beam → egg move
	learnmove 33, REVERSAL ; Flail → similar move
	learnmove 37, THUNDERBOLT ; Discharge → TM move
	learnmove 43, TAKE_DOWN
	learnmove 47, RECOVER ; Aqua Ring → similar move
	learnmove 51, ICE_BEAM ; Hydro Pump → TM move
	learnmove 54, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	learnmove 58, LIGHT_SCREEN ; Charge → event move
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	evolution EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, CHARM
	learnmove 5, METRONOME
	learnmove 9, SWEET_KISS
	learnmove 13, SING ; Yawn → similar move
	learnmove 17, ENCORE
	learnmove 21, DIZZY_PUNCH ; Follow Me → new move
	learnmove 25, HEAL_BELL ; Bestow → HGSS tutor move
	learnmove 29, SOFTBOILED ; Wish → new move
	learnmove 33, ANCIENTPOWER
	learnmove 37, SAFEGUARD
	learnmove 41, BATON_PASS
	learnmove 45, DOUBLE_EDGE
	learnmove 49, EXTRASENSORY ; Last Resort → egg move
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	evolution EVOLVE_ITEM, SHINY_STONE, TOGEKISS
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, CHARM
	learnmove 1, DISARMING_VOICE ; evolution move
	learnmove 5, METRONOME
	learnmove 9, SWEET_KISS
	learnmove 13, SING ; Yawn → similar move
	learnmove 17, ENCORE
	learnmove 21, DIZZY_PUNCH ; Follow Me → new move
	learnmove 25, HEAL_BELL ; Bestow → HGSS tutor move
	learnmove 29, SOFTBOILED ; Wish → new move
	learnmove 33, ANCIENTPOWER
	learnmove 37, SAFEGUARD
	learnmove 41, BATON_PASS
	learnmove 45, DOUBLE_EDGE
	learnmove 49, EXTRASENSORY ; Last Resort → egg move
	db 0 ; no more level-up moves

TogekissEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DISARMING_VOICE ; evolution move
	learnmove 1, HURRICANE ; Sky Attack → new move
	learnmove 1, EXTREMESPEED
	learnmove 1, AURA_SPHERE
	learnmove 1, AIR_SLASH
	db 0 ; no more level-up moves

NatuEvosAttacks:
	evolution EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	learnmove 1, PECK
	learnmove 1, LEER
	learnmove 6, NIGHT_SHADE
	learnmove 9, TELEPORT
	learnmove 12, SAFEGUARD ; Lucky Chant → event move
	learnmove 17, HYPNOSIS ; Stored Power → new move
	learnmove 20, PAIN_SPLIT ; Ominous Wind → HGSS tutor move
	learnmove 23, CONFUSE_RAY
	learnmove 28, RECOVER ; Wish → similar move
	learnmove 33, PSYCHIC_M
	learnmove 36, ROOST ; Miracle Eye → egg move
	learnmove 39, HAZE ; Psycho Shift → egg move
	learnmove 44, FUTURE_SIGHT
	learnmove 47, HEX ; Power Swap + Guard Swap → new move
	learnmove 50, SUCKER_PUNCH ; Me First → HGSS tutor move
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, AIR_SLASH ; evolution move
	learnmove 1, PECK
	learnmove 1, LEER
	learnmove 6, NIGHT_SHADE
	learnmove 9, TELEPORT
	learnmove 12, SAFEGUARD ; Lucky Chant → event move
	learnmove 17, HYPNOSIS ; Stored Power → new move
	learnmove 20, PAIN_SPLIT ; Ominous Wind → HGSS tutor move
	learnmove 23, CONFUSE_RAY
	learnmove 29, RECOVER ; Wish → similar move
	learnmove 35, PSYCHIC_M
	learnmove 39, ROOST ; Miracle Eye → egg move
	learnmove 43, HAZE ; Psycho Shift → egg move
	learnmove 49, FUTURE_SIGHT
	learnmove 53, HEX ; Power Swap + Guard Swap → new move
	learnmove 57, SUCKER_PUNCH ; Me First → HGSS tutor move
	db 0 ; no more level-up moves

MareepEvosAttacks:
	evolution EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, GROWL
	learnmove 4, THUNDER_WAVE
	learnmove 8, THUNDERSHOCK
	learnmove 11, MUD_SLAP ; Cotton Spore → GSC TM move
	learnmove 15, SPARK ; Charge → new move
	learnmove 18, HEAL_BELL ; Take Down → HGSS tutor move
	learnmove 22, TAKE_DOWN ; Electro Ball → Take Down
	learnmove 25, CONFUSE_RAY
	learnmove 29, POWER_GEM
	learnmove 32, THUNDERBOLT ; Discharge → TM move
	learnmove 36, SAFEGUARD ; Cotton Guard → egg move
	learnmove 39, DAZZLING_GLEAM ; Signal Beam → new move
	learnmove 43, LIGHT_SCREEN
	learnmove 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	evolution EVOLVE_LEVEL, 36, AMPHAROS
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, GROWL
	learnmove 4, THUNDER_WAVE
	learnmove 8, THUNDERSHOCK
	learnmove 11, MUD_SLAP ; Cotton Spore → GSC TM move
	learnmove 16, SPARK ; Charge → new move
	learnmove 20, HEAL_BELL ; Take Down → HGSS tutor move
	learnmove 25, TAKE_DOWN ; Electro Ball → Take Down
	learnmove 29, CONFUSE_RAY
	learnmove 34, POWER_GEM
	learnmove 38, THUNDERBOLT ; Discharge → TM move
	learnmove 43, SAFEGUARD ; Cotton Guard → egg move
	learnmove 47, DAZZLING_GLEAM ; Signal Beam → new move
	learnmove 52, LIGHT_SCREEN
	learnmove 56, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, THUNDERPUNCH ; evolution move
	learnmove 1, FIRE_PUNCH
	learnmove 1, DRAGON_PULSE
	learnmove 1, TACKLE
	learnmove 1, GROWL
	learnmove 4, THUNDER_WAVE
	learnmove 8, THUNDERSHOCK
	learnmove 11, MUD_SLAP ; Cotton Spore → GSC TM move
	learnmove 16, SPARK ; Charge → new move
	learnmove 20, HEAL_BELL ; Take Down → HGSS tutor move
	learnmove 25, TAKE_DOWN ; Electro Ball → Take Down
	learnmove 29, CONFUSE_RAY
	learnmove 35, POWER_GEM
	learnmove 40, THUNDERBOLT ; Discharge → TM move
	learnmove 46, SAFEGUARD ; Cotton Guard → egg move
	learnmove 51, DAZZLING_GLEAM ; Signal Beam → new move
	learnmove 57, LIGHT_SCREEN
	learnmove 62, THUNDER
	learnmove 65, DRAGON_PULSE
	learnmove 71, OUTRAGE ; HGSS tutor move
	db 0 ; no more level-up moves

MarillEvosAttacks:
	evolution EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 2, GROWL ; Tail Whip → new move
	learnmove 5, FORESIGHT ; Water Sport → egg move
	learnmove 7, AQUA_JET ; Bubble → egg move
	learnmove 10, DEFENSE_CURL
	learnmove 10, ROLLOUT
	learnmove 13, BUBBLEBEAM
	learnmove 16, DIZZY_PUNCH ; Helping Hand → event move
	learnmove 20, AQUA_TAIL
	learnmove 23, PLAY_ROUGH
	learnmove 28, SCARY_FACE ; Aqua Ring → event move
	learnmove 31, RAIN_DANCE
	learnmove 37, DOUBLE_EDGE
	learnmove 40, CLOSE_COMBAT ; Superpower → similar move
	learnmove 47, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 2, GROWL ; Tail Whip → new move
	learnmove 5, FORESIGHT ; Water Sport → egg move
	learnmove 7, AQUA_JET ; Bubble → egg move
	learnmove 10, DEFENSE_CURL
	learnmove 10, ROLLOUT
	learnmove 13, BUBBLEBEAM
	learnmove 16, DIZZY_PUNCH ; Helping Hand → event move
	learnmove 21, AQUA_TAIL
	learnmove 25, PLAY_ROUGH
	learnmove 31, SCARY_FACE ; Aqua Ring → event move
	learnmove 35, RAIN_DANCE
	learnmove 42, DOUBLE_EDGE
	learnmove 46, CLOSE_COMBAT ; Superpower → similar move
	learnmove 55, HYDRO_PUMP
	db 0 ; no more level-up moves

BonslyEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	db 0 ; no more level-up moves



SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SUBSTITUTE ; Copycat → event move
	learnmove 5, REVERSAL ; Flail → similar move
	learnmove 8, LOW_KICK
	learnmove 12, LEER ; Rock Throw → new move
	learnmove 15, ROCK_THROW ; Mimic → Rock Throw
	learnmove 19, FEINT_ATTACK
	learnmove 22, ANCIENTPOWER ; Rock Tomb → new move
	learnmove 26, PROTECT ; Block → TM move
	learnmove 29, ROCK_SLIDE
	learnmove 33, COUNTER
	learnmove 36, SUCKER_PUNCH
	learnmove 40, DOUBLE_EDGE
	learnmove 43, STONE_EDGE
	learnmove 47, CLOSE_COMBAT ; Hammer Arm → similar move
	learnmove 50, IRON_HEAD ; Head Smash → tutor move
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	db 0 ; no more level-up moves


SkiploomEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	db 0 ; no more level-up moves


JumpluffEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	db 0 ; no more level-up moves


AipomEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	db 0 ; no more level-up moves


AmbipomEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	db 0 ; no more level-up moves



SunkernEvosAttacks:
	evolution EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	learnmove 1, SPLASH ; Growth → Hoppip move
	learnmove 1, ABSORB
	learnmove 4, GROWTH ; Ingrain → Growth
	learnmove 7, DEFENSE_CURL ; Grass Whistle → TM move
	learnmove 10, MEGA_DRAIN
	learnmove 13, LEECH_SEED
	learnmove 16, RAZOR_LEAF
	learnmove 19, PROTECT ; Worry Seed → TM move
	learnmove 22, GIGA_DRAIN
	learnmove 25, AGILITY ; Endeavor → new move
	learnmove 31, EARTH_POWER ; Natural Gift → tutor move
	learnmove 34, SOLAR_BEAM
	learnmove 37, DOUBLE_EDGE
	learnmove 40, SUNNY_DAY
	learnmove 43, SEED_BOMB
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SPLASH ; Growth → Hoppip move
	learnmove 1, TACKLE ; Pound → similar move
	learnmove 1, ABSORB
	learnmove 4, GROWTH ; Ingrain → Growth
	learnmove 7, DEFENSE_CURL ; Grass Whistle → TM move
	learnmove 10, MEGA_DRAIN
	learnmove 13, LEECH_SEED
	learnmove 16, RAZOR_LEAF
	learnmove 19, PROTECT ; Worry Seed → TM move
	learnmove 22, GIGA_DRAIN
	learnmove 25, AGILITY ; Bullet Seed → TM move
	learnmove 28, PETAL_DANCE
	learnmove 31, EARTH_POWER ; Natural Gift → tutor move
	learnmove 34, SOLAR_BEAM
	learnmove 37, DOUBLE_EDGE
	learnmove 40, SUNNY_DAY
	learnmove 43, SEED_BOMB ; Leaf Storm → Sunkern move
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	evolution EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, FORESIGHT
	learnmove 1, BUG_BITE
	learnmove 6, QUICK_ATTACK
	learnmove 11, DOUBLE_TEAM
	learnmove 14, SONICBOOM
	learnmove 17, PROTECT ; Detect → similar move
	learnmove 22, DRAGON_RAGE ; Supersonic → new move
	learnmove 27, SUPERSONIC ; Uproar → Supersonic
	learnmove 30, PURSUIT
	learnmove 35, ANCIENTPOWER
	learnmove 38, HYPNOSIS
	learnmove 43, WING_ATTACK
	learnmove 46, SCREECH
	learnmove 49, U_TURN
	learnmove 54, AIR_SLASH
	learnmove 57, BUG_BUZZ
	learnmove 62, DREAM_EATER ; event move
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DRAGONBREATH ; evolution move
	learnmove 1, NIGHT_SLASH
	learnmove 1, TACKLE
	learnmove 1, FORESIGHT
	learnmove 1, BUG_BITE
	learnmove 6, QUICK_ATTACK
	learnmove 11, DOUBLE_TEAM
	learnmove 14, SONICBOOM
	learnmove 17, PROTECT ; Detect → similar move
	learnmove 22, DRAGON_RAGE ; Supersonic → new move
	learnmove 27, SUPERSONIC ; Uproar → Supersonic
	learnmove 30, PURSUIT
	learnmove 35, ANCIENTPOWER
	learnmove 38, SLASH ; Feint → Slash
	learnmove 43, WING_ATTACK ; Slash → Wing Attack
	learnmove 46, SCREECH
	learnmove 49, U_TURN
	learnmove 54, AIR_SLASH
	learnmove 57, BUG_BUZZ
	learnmove 62, FLY ; new move
	db 0 ; no more level-up moves

WooperEvosAttacks:
	evolution EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	learnmove 1, WATER_GUN
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 5, MUD_SLAP ; Mud Sport → TM move
	learnmove 9, SCARY_FACE ; Mud Shot → event move
	learnmove 15, HEADBUTT ; Slam → tutor move
	learnmove 19, RECOVER ; Mud Bomb → egg move
	learnmove 23, AMNESIA
	learnmove 29, BELLY_DRUM ; Yawn → event move
	learnmove 33, EARTHQUAKE
	learnmove 37, RAIN_DANCE
	learnmove 43, HAZE
	learnmove 47, AQUA_TAIL ; Muddy Water → event move
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, ANCIENTPOWER ; evolution move
	learnmove 1, WATER_GUN
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 5, MUD_SLAP ; Mud Sport → TM move
	learnmove 9, SCARY_FACE ; Mud Shot → event move
	learnmove 15, HEADBUTT ; Slam → tutor move
	learnmove 19, RECOVER ; Mud Bomb → egg move
	learnmove 24, AMNESIA
	learnmove 31, BELLY_DRUM ; Yawn → event move
	learnmove 36, EARTHQUAKE
	learnmove 41, RAIN_DANCE
	learnmove 48, HAZE
	learnmove 53, AQUA_TAIL ; Muddy Water → event move
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	evolution EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	db 0 ; no more evolutions
	learnmove 1, PECK
	learnmove 1, ASTONISH
	learnmove 5, PURSUIT
	learnmove 11, HAZE
	learnmove 15, WING_ATTACK
	learnmove 21, NIGHT_SHADE
	learnmove 25, THIEF ; Assurance → TM move
	learnmove 31, SWAGGER ; Taunt → TM move
	learnmove 35, FEINT_ATTACK
	learnmove 41, MEAN_LOOK
	learnmove 45, BATON_PASS ; Foul Play → XD move
	learnmove 50, DRILL_PECK ; Tailwind → egg move
	learnmove 55, SUCKER_PUNCH
	learnmove 61, PERISH_SONG ; Torment → egg move
	learnmove 65, BRAVE_BIRD ; Quash → egg move
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SUCKER_PUNCH
	learnmove 1, ASTONISH
	learnmove 1, PURSUIT
	learnmove 1, HAZE
	learnmove 1, WING_ATTACK
	learnmove 25, SWAGGER
	learnmove 35, NASTY_PLOT
	learnmove 45, NIGHT_SLASH ; Foul Play → Night Slash
	learnmove 55, PERISH_SONG ; Night Slash → egg move
	learnmove 65, BRAVE_BIRD ; Quash → egg move
	learnmove 75, DARK_PULSE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	evolution EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, TELEPORT ; Psywave → new move
	learnmove 1, DISARMING_VOICE ; new move
	learnmove 5, CONFUSION ; Spite → new move
	learnmove 10, ASTONISH
	learnmove 14, CONFUSE_RAY
	learnmove 19, MEAN_LOOK
	learnmove 23, HEX
	learnmove 28, PSYBEAM
	learnmove 32, PAIN_SPLIT
	learnmove 37, DESTINY_BOND ; Payback → egg move
	learnmove 41, SHADOW_BALL
	learnmove 46, PERISH_SONG
	learnmove 50, DAZZLING_GLEAM ; Grudge → TM move
	learnmove 55, POWER_GEM
	learnmove 62, NASTY_PLOT ; egg move
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, POWER_GEM
	learnmove 1, SHADOW_BALL ; Phantom Force → TM move
	learnmove 1, FLAMETHROWER ; Mystical Fire → TM move
	learnmove 1, DAZZLING_GLEAM ; Magical Leaf → TM move ; evolution move
	learnmove 1, GROWL
	learnmove 1, TELEPORT ; Psywave → new move
	learnmove 1, DISARMING_VOICE ; new move
	learnmove 1, CONFUSION ; Spite → new move
	learnmove 1, ASTONISH
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WynautEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	db 0 ; no more level-up moves



WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SPLASH
	learnmove 1, CHARM
	learnmove 1, ENCORE
	learnmove 1, RECOVER
	learnmove 1, COUNTER
	learnmove 1, MIRROR_COAT
	learnmove 1, SAFEGUARD
	learnmove 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, ASTONISH
	learnmove 1, TACKLE
	learnmove 1, GROWL
	learnmove 1, CONFUSION
	learnmove 5, FORESIGHT ; Odor Sleuth → egg move
	learnmove 10, PURSUIT ; Assurance → new move
	learnmove 14, STOMP
	learnmove 19, PSYBEAM
	learnmove 23, AGILITY
	learnmove 28, DOUBLE_KICK ; Double Hit → egg move
	learnmove 32, ZEN_HEADBUTT
	learnmove 37, CRUNCH
	learnmove 41, BATON_PASS
	learnmove 46, NASTY_PLOT
	learnmove 50, PSYCHIC_M
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	evolution EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, PROTECT
	learnmove 6, SELFDESTRUCT
	learnmove 9, BUG_BITE
	learnmove 12, SUBSTITUTE ; Take Down → event move
	learnmove 17, RAPID_SPIN
	learnmove 20, DEFENSE_CURL ; Bide → TM move
	learnmove 23, TAKE_DOWN ; Natural Gift → Take Down
	learnmove 28, SPIKES
	learnmove 31, REVERSAL ; Payback → new move
	learnmove 34, EXPLOSION
	learnmove 39, REFLECT ; Iron Defense → egg move
	learnmove 42, GYRO_BALL
	learnmove 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, FLASH_CANNON ; Mirror Shot → TM move ; evolution move
	learnmove 1, AGILITY ; Autotomize → similar move
	learnmove 1, TOXIC_SPIKES
	learnmove 1, TACKLE
	learnmove 1, PROTECT
	learnmove 6, SELFDESTRUCT
	learnmove 9, BUG_BITE
	learnmove 12, SUBSTITUTE ; Take Down → event move
	learnmove 17, RAPID_SPIN
	learnmove 20, DEFENSE_CURL ; Bide → TM move
	learnmove 23, TAKE_DOWN ; Natural Gift → Take Down
	learnmove 28, SPIKES
	learnmove 32, REVERSAL ; Payback → new move
	learnmove 36, EXPLOSION
	learnmove 42, REFLECT ; Iron Defense → egg move
	learnmove 46, GYRO_BALL
	learnmove 50, DOUBLE_EDGE
	learnmove 56, ZAP_CANNON
	learnmove 60, IRON_HEAD ; Heavy Slam → new move
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, RAGE
	learnmove 1, DEFENSE_CURL
	learnmove 3, ROLLOUT
	learnmove 6, ASTONISH ; Spite → egg move
	learnmove 8, PURSUIT
	learnmove 11, SCREECH
	learnmove 13, MUD_SLAP
	learnmove 16, FURY_SWIPES ; Yawn → event move (Fury Attack)
	learnmove 18, ANCIENTPOWER
	learnmove 21, BODY_SLAM
	learnmove 23, DRAGON_RAGE ; Drill Run → new move
	learnmove 26, ROOST
	learnmove 28, TAKE_DOWN
	learnmove 31, DRAGON_DANCE ; Coil → new move
	learnmove 33, DIG
	learnmove 36, GLARE
	learnmove 38, DOUBLE_EDGE
	learnmove 41, EARTHQUAKE ; Endeavor → TM move
	learnmove 43, AIR_SLASH
	learnmove 46, HEX ; Dragon Rush → egg move
	learnmove 48, ENDURE
	learnmove 51, REVERSAL ; Flail → similar move
	db 0 ; no more level-up moves

GligarEvosAttacks:
	;evolution EVOLVE_HOLDING, RAZOR_FANG, GLISCOR
	db 0 ; no more evolutions
	learnmove 1, POISON_STING
	learnmove 4, MUD_SLAP ; Sand Attack → similar move
	learnmove 7, DEFENSE_CURL ; Harden → similar move
	learnmove 10, QUICK_ATTACK ; Knock Off → Quick Attack
	learnmove 13, WING_ATTACK ; Quick Attack → egg move
	learnmove 16, BUG_BITE ; Fury Cutter → similar move
	learnmove 19, FEINT_ATTACK
	learnmove 22, ACROBATICS
	learnmove 27, SLASH
	learnmove 30, U_TURN
	learnmove 35, SCREECH
	learnmove 40, X_SCISSOR
	learnmove 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	learnmove 50, SWORDS_DANCE
	learnmove 55, NIGHT_SLASH ; Guillotine → egg move
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, POISON_JAB
	learnmove 4, MUD_SLAP ; Sand Attack → similar move
	learnmove 7, DEFENSE_CURL ; Harden → similar move
	learnmove 10, QUICK_ATTACK ; Knock Off → Quick Attack
	learnmove 13, WING_ATTACK ; Quick Attack → egg move
	learnmove 16, BUG_BITE ; Fury Cutter → similar move
	learnmove 19, FEINT_ATTACK
	learnmove 22, ACROBATICS
	learnmove 27, SLASH ; Night Slash → Gligar move
	learnmove 30, U_TURN
	learnmove 35, SCREECH
	learnmove 40, X_SCISSOR
	learnmove 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	learnmove 50, SWORDS_DANCE
	learnmove 55, NIGHT_SLASH ; Guillotine → Night Slash
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	evolution EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, SCARY_FACE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, CHARM
	learnmove 7, BITE
	learnmove 13, LICK
	learnmove 19, HEADBUTT
	learnmove 25, ROAR
	learnmove 31, RAGE
	learnmove 37, PLAY_ROUGH
	learnmove 43, DOUBLE_EDGE ; Payback → event move
	learnmove 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, SCARY_FACE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, CHARM
	learnmove 7, BITE
	learnmove 13, LICK
	learnmove 19, HEADBUTT
	learnmove 27, ROAR
	learnmove 35, RAGE
	learnmove 43, PLAY_ROUGH
	learnmove 51, DOUBLE_EDGE ; Payback → event move
	learnmove 59, CRUNCH
	learnmove 67, OUTRAGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, WATER_GUN
	learnmove 1, SPIKES
	learnmove 1, TACKLE
	learnmove 1, POISON_STING
	learnmove 5, DEFENSE_CURL ; Harden → TM move
	learnmove 9, MINIMIZE
	learnmove 13, BUBBLEBEAM ; Bubble → similar move
	learnmove 17, ROLLOUT
	learnmove 21, TOXIC_SPIKES
	learnmove 25, PAIN_SPLIT ; Stockpile + Spit Up → HGSS move tutor
	learnmove 29, REVERSAL ; Revenge → new move
	learnmove 33, WATER_PULSE ; Brine → TM move
	learnmove 37, PIN_MISSILE
	learnmove 41, TAKE_DOWN
	learnmove 45, AQUA_TAIL
	learnmove 49, POISON_JAB
	learnmove 53, DESTINY_BOND
	learnmove 57, HYDRO_PUMP
	learnmove 60, DOUBLE_EDGE ; Fell Stinger → event move
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	db 0 ; no more level-up moves


HeracrossEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, NIGHT_SLASH
	learnmove 1, TACKLE
	learnmove 1, LEER
	learnmove 1, HORN_ATTACK
	learnmove 1, ENDURE
	learnmove 7, BUG_BITE ; Feint → HGSS tutor move
	learnmove 10, AERIAL_ACE
	learnmove 16, LOW_KICK ; Chip Away → HGSS tutor move
	learnmove 19, COUNTER
	learnmove 25, FURY_SWIPES ; Fury Attack → similar move
	learnmove 28, SEISMIC_TOSS ; Brick Break → tutor move
	learnmove 31, PIN_MISSILE
	learnmove 34, TAKE_DOWN
	learnmove 37, MEGAHORN
	learnmove 43, CLOSE_COMBAT
	learnmove 46, REVERSAL
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	evolution EVOLVE_HOLDING, RAZOR_CLAW, WEAVILE
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, LEER
	learnmove 1, BITE ; Taunt → egg move
	learnmove 8, QUICK_ATTACK
	learnmove 10, FEINT_ATTACK
	learnmove 14, ICE_SHARD ; Icy Wind → Ice Shard
	learnmove 16, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 20, AGILITY
	learnmove 22, METAL_CLAW
	learnmove 25, HONE_CLAWS
	learnmove 28, ICICLE_CRASH ; Beat Up → egg move
	learnmove 32, SCREECH
	learnmove 35, SLASH
	learnmove 44, X_SCISSOR ; Punishment → TM move
	learnmove 47, CRUNCH ; Ice Shard → new move
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SCRATCH
	learnmove 1, LEER
	learnmove 1, BITE ; Taunt → egg move
	learnmove 8, QUICK_ATTACK
	learnmove 10, FEINT_ATTACK
	learnmove 14, ICE_SHARD ; Icy Wind → Ice Shard
	learnmove 16, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 20, NASTY_PLOT
	learnmove 22, METAL_CLAW
	learnmove 25, HONE_CLAWS
	learnmove 28, ICICLE_CRASH ; Fling → egg move
	learnmove 32, SCREECH
	learnmove 35, NIGHT_SLASH
	learnmove 44, X_SCISSOR ; Punishment → TM move
	learnmove 47, CRUNCH ; Dark Pulse → new move
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	evolution EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	learnmove 1, THIEF ; Covet → TM move
	learnmove 1, SCRATCH
	learnmove 1, GROWL ; Baby-Doll Eyes → similar move
	learnmove 1, LICK
	learnmove 1, FOCUS_ENERGY ; Fake Tears → egg move
	learnmove 8, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 15, FEINT_ATTACK
	learnmove 22, BELLY_DRUM ; Sweet Scent → egg move
	learnmove 25, PLAY_ROUGH ; Play Nice → egg move
	learnmove 29, SLASH
	learnmove 36, CHARM
	learnmove 43, REST
	learnmove 43, CRUNCH ; Snore → egg move
	learnmove 50, THRASH
	learnmove 57, CLOSE_COMBAT ; Fling → new move
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GUNK_SHOT ; HGSS tutor move
	learnmove 1, THIEF ; Covet → TM move
	learnmove 1, SCRATCH
	learnmove 1, LEER
	learnmove 1, LICK
	learnmove 1, FOCUS_ENERGY ; Fake Tears → egg move
	learnmove 8, FURY_SWIPES ; Fury Swipes → similar move
	learnmove 15, FEINT_ATTACK
	learnmove 22, BELLY_DRUM ; Sweet Scent → egg move
	learnmove 25, PLAY_ROUGH ; Play Nice → egg move
	learnmove 29, SLASH
	learnmove 38, SCARY_FACE
	learnmove 47, REST
	learnmove 49, CRUNCH ; Snore → egg move
	learnmove 58, THRASH
	learnmove 67, CLOSE_COMBAT ; Hammer Arm → new move
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	evolution EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	learnmove 1, MUD_SLAP ; Smog → TM move
	learnmove 6, EMBER
	learnmove 8, ROCK_THROW
	learnmove 13, DEFENSE_CURL ; Harden → similar move
	learnmove 15, FIRE_SPIN ; Incinerate → new move
	learnmove 20, SMOKESCREEN ; Clear Smog → egg move
	learnmove 22, ANCIENTPOWER
	learnmove 27, FLAME_WHEEL ; Flame Burst → new move
	learnmove 29, ROCK_SLIDE
	learnmove 34, PAIN_SPLIT ; Lava Plume → HGSS tutor move
	learnmove 36, AMNESIA
	learnmove 41, BODY_SLAM
	learnmove 43, RECOVER
	learnmove 48, FLAMETHROWER
	learnmove 50, EARTH_POWER
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DRAGON_DANCE ; Shell Smash → similar move ; evolution move
	learnmove 1, MUD_SLAP ; Smog → TM move
	learnmove 6, EMBER
	learnmove 8, ROCK_THROW
	learnmove 13, DEFENSE_CURL ; Harden → similar move
	learnmove 15, FIRE_SPIN ; Incinerate → new move
	learnmove 20, SMOKESCREEN ; Clear Smog → egg move
	learnmove 22, ANCIENTPOWER
	learnmove 27, FLAME_WHEEL ; Flame Burst → new move
	learnmove 29, ROCK_SLIDE
	learnmove 34, PAIN_SPLIT ; Lava Plume → HGSS tutor move
	learnmove 36, AMNESIA
	learnmove 43, BODY_SLAM
	learnmove 47, RECOVER
	learnmove 54, FLAMETHROWER
	learnmove 58, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	evolution EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, FORESIGHT ; Odor Sleuth → similar move
	learnmove 5, BITE ; Mud Sport → egg move
	learnmove 8, ICE_SHARD ; Powder Snow → Ice Shard
	learnmove 11, MUD_SLAP
	learnmove 14, ENDURE
	learnmove 18, MAGNITUDE ; Mud Bomb → new move
	learnmove 21, ICY_WIND
	learnmove 24, ICICLE_CRASH ; Ice Shard → egg move
	learnmove 28, TAKE_DOWN
	learnmove 35, BULLDOZE ; Mist → TM move
	learnmove 37, REVERSAL ; Earthquake → similar move
	learnmove 40, EARTHQUAKE ; Flail → Earthquake
	learnmove 44, BLIZZARD
	learnmove 48, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	evolution EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	db 0 ; no more evolutions
	learnmove 1, ANCIENTPOWER
	learnmove 1, FURY_SWIPES ; evolution move (Fury Attack)
	learnmove 1, PECK
	learnmove 1, FORESIGHT ; Odor Sleuth → similar move
	learnmove 5, BITE ; Mud Sport → egg move
	learnmove 8, ICE_SHARD ; Powder Snow → Ice Shard
	learnmove 11, MUD_SLAP
	learnmove 14, ENDURE
	learnmove 18, MAGNITUDE ; Mud Bomb → new move
	learnmove 21, ICY_WIND
	learnmove 24, ICICLE_CRASH ; Ice Fang → egg move
	learnmove 28, TAKE_DOWN
	learnmove 37, BULLDOZE ; Mist → TM move
	learnmove 41, THRASH
	learnmove 46, EARTHQUAKE
	learnmove 52, BLIZZARD
	learnmove 58, AMNESIA
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, ANCIENTPOWER
	learnmove 1, PECK
	learnmove 1, FORESIGHT ; Odor Sleuth → similar move
	learnmove 5, BITE ; Mud Sport → egg move
	learnmove 8, ICE_SHARD ; Powder Snow → Ice Shard
	learnmove 11, MUD_SLAP
	learnmove 14, ENDURE
	learnmove 18, MAGNITUDE ; Mud Bomb → new move
	learnmove 21, HAIL
	learnmove 24, AVALANCHE ; Ice Fang → egg move
	learnmove 28, TAKE_DOWN
	learnmove 33, FURY_SWIPES ; Double Hit → Piloswine move
	learnmove 37, BULLDOZE ; Mist → TM move
	learnmove 41, THRASH
	learnmove 46, EARTHQUAKE
	learnmove 52, BLIZZARD
	learnmove 58, SCARY_FACE
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, DEFENSE_CURL ; Harden → similar move
	learnmove 4, WATER_GUN ; Bubble → similar move
	learnmove 8, RECOVER
	learnmove 10, BUBBLEBEAM
	learnmove 13, SAFEGUARD ; Refresh → egg move
	learnmove 17, ANCIENTPOWER
	learnmove 20, ICICLE_SPEAR ; Spike Cannon → new move
	learnmove 23, CONFUSE_RAY ; Lucky Chant → egg move
	learnmove 27, SELFDESTRUCT ; Brine → new move
	learnmove 29, BARRIER ; Iron Defense → similar move
	learnmove 31, ROCK_BLAST
	learnmove 35, ENDURE
	learnmove 38, RECOVER ; Aqua Ring → similar move
	learnmove 41, POWER_GEM
	learnmove 45, MIRROR_COAT
	learnmove 47, EARTH_POWER
	learnmove 50, REVERSAL ; Flail → similar move
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	evolution EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	learnmove 1, WATER_GUN
	learnmove 6, FORESIGHT ; Lock-On → new move
	learnmove 10, PSYBEAM
	learnmove 14, AURORA_BEAM
	learnmove 18, BUBBLEBEAM
	learnmove 22, FOCUS_ENERGY
	learnmove 26, WATER_PULSE
	learnmove 30, FLAMETHROWER ; Signal Beam → TM move
	learnmove 34, ICE_BEAM
	learnmove 38, SEED_BOMB ; Bullet Seed → tutor move
	learnmove 42, GUNK_SHOT ; Hydro Pump → new move
	learnmove 46, HYDRO_PUMP ; Hyper Beam → Hydro Pump
	learnmove 50, AURA_SPHERE ; Soak → new move
	learnmove 54, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, OCTAZOOKA ; evolution move
	learnmove 1, ROCK_BLAST
	learnmove 1, POWER_WHIP ; new move
	learnmove 1, WATER_GUN
	learnmove 6, FORESIGHT ; Constrict → new move
	learnmove 10, PSYBEAM
	learnmove 14, AURORA_BEAM
	learnmove 18, BUBBLEBEAM
	learnmove 22, FOCUS_ENERGY
	learnmove 26, WRAP ; Wring Out → new move
	learnmove 28, WATER_PULSE
	learnmove 34, FLAMETHROWER ; Signal Beam → TM move
	learnmove 40, ICE_BEAM
	learnmove 46, SEED_BOMB ; Bullet Seed → tutor move
	learnmove 52, GUNK_SHOT ; Hydro Pump → new move
	learnmove 58, HYDRO_PUMP ; Hyper Beam → Hydro Pump
	learnmove 64, AURA_SPHERE ; Soak → new move
	learnmove 70, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	db 0 ; no more level-up moves


MantykeEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	db 0 ; no more level-up moves


MantineEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GUST ; event move
	learnmove 1, TACKLE
	learnmove 1, WATER_GUN ; Bubble → similar move
	learnmove 3, SUPERSONIC
	learnmove 7, BUBBLEBEAM
	learnmove 11, CONFUSE_RAY
	learnmove 14, WING_ATTACK
	learnmove 16, HEADBUTT
	learnmove 19, WATER_PULSE
	learnmove 23, AQUA_JET ; Wide Guard → new move
	learnmove 27, TAKE_DOWN
	learnmove 32, AGILITY
	learnmove 36, AIR_SLASH
	learnmove 39, ROOST ; Aqua Ring → similar move
	learnmove 46, MIRROR_COAT ; Bounce → Dream World move
	learnmove 49, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, LEER
	learnmove 1, PECK
	learnmove 6, MUD_SLAP ; Sand Attack → similar move
	learnmove 9, BITE ; Metal Claw → new move
	learnmove 12, METAL_CLAW ; Air Cutter → Metal Claw
	learnmove 17, FURY_SWIPES ; Fury Attack → similar move
	learnmove 20, PURSUIT ; Feint → egg move
	learnmove 23, SWIFT
	learnmove 28, SPIKES
	learnmove 31, AGILITY
	learnmove 34, STEEL_WING
	learnmove 39, SLASH
	learnmove 42, SCREECH ; Metal Sound → similar move
	learnmove 45, AIR_SLASH
	learnmove 50, DRILL_PECK ; Autotomize → egg move
	learnmove 53, NIGHT_SLASH
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	evolution EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	learnmove 1, LEER
	learnmove 1, EMBER
	learnmove 4, PURSUIT ; Howl → egg move
	learnmove 8, SMOKESCREEN ; Smog → new move
	learnmove 13, ROAR
	learnmove 16, BITE
	learnmove 20, FORESIGHT ; Odor Sleuth → similar move
	learnmove 25, SUPER_FANG ; Beat Up → HGSS tutor move
	learnmove 28, FIRE_SPIN ; Fire Fang → egg move
	learnmove 32, FEINT_ATTACK
	learnmove 37, DESTINY_BOND ; Embargo → egg move
	learnmove 40, WILL_O_WISP ; Foul Play → egg move
	learnmove 44, FLAMETHROWER
	learnmove 49, CRUNCH
	learnmove 52, NASTY_PLOT
	learnmove 56, DARK_PULSE ; Inferno → TM move
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, LEER
	learnmove 1, EMBER
	learnmove 4, PURSUIT ; Howl → egg move
	learnmove 8, SMOKESCREEN ; Smog → new move
	learnmove 13, ROAR
	learnmove 16, BITE
	learnmove 20, FORESIGHT ; Odor Sleuth → similar move
	learnmove 26, SUPER_FANG ; Beat Up → HGSS tutor move
	learnmove 30, FIRE_SPIN ; Fire Fang → egg move
	learnmove 35, FEINT_ATTACK
	learnmove 41, DESTINY_BOND ; Embargo → egg move
	learnmove 45, WILL_O_WISP ; Foul Play → egg move
	learnmove 50, FLAMETHROWER
	learnmove 56, CRUNCH
	learnmove 60, NASTY_PLOT
	learnmove 65, DARK_PULSE ; Inferno → TM move
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	evolution EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	learnmove 1, FORESIGHT ; Odor Sleuth → similar move
	learnmove 1, TACKLE
	learnmove 1, GROWL
	learnmove 1, DEFENSE_CURL
	learnmove 6, REVERSAL ; Flail → similar move
	learnmove 10, ROLLOUT
	learnmove 15, ENCORE ; Natural Gift → event move
	learnmove 19, ENDURE
	learnmove 24, TAKE_DOWN ; Slam → Take Down
	learnmove 28, BODY_SLAM ; Take Down → TM move
	learnmove 33, CHARM
	learnmove 37, PLAY_ROUGH ; Last Resort → egg move
	learnmove 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, FURY_SWIPES ; evolution move
	learnmove 1, GUNK_SHOT ; HGSS tutor move
	learnmove 1, HORN_ATTACK
	learnmove 1, GROWL
	learnmove 1, DEFENSE_CURL
	learnmove 1, BULLDOZE
	learnmove 6, RAPID_SPIN
	learnmove 10, ROLLOUT
	learnmove 15, IRON_TAIL ; Assurance → TM move
	learnmove 19, KNOCK_OFF
	learnmove 24, ANCIENTPOWER ; Slam → HGSS tutor move
	learnmove 30, MAGNITUDE
	learnmove 37, SCARY_FACE
	learnmove 43, EARTHQUAKE
	learnmove 50, GIGA_IMPACT
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	db 0 ; no more level-up moves


SmeargleEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, SKETCH
	learnmove 11, SKETCH
	learnmove 21, SKETCH
	learnmove 31, SKETCH
	learnmove 41, SKETCH
	learnmove 51, SKETCH
	learnmove 61, SKETCH
	learnmove 71, SKETCH
	learnmove 81, SKETCH
	learnmove 91, SKETCH
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 3, GROWL
	learnmove 5, DEFENSE_CURL
	learnmove 8, STOMP
	learnmove 11, MILK_DRINK
	learnmove 15, DIZZY_PUNCH ; Bide → egg move
	learnmove 19, ROLLOUT
	learnmove 24, BODY_SLAM
	learnmove 29, ZEN_HEADBUTT
	learnmove 35, SEISMIC_TOSS ; Captivate → egg move
	learnmove 41, GYRO_BALL
	learnmove 48, HEAL_BELL
	learnmove 50, REVERSAL ; Wake-Up Slap → egg move
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, BITE
	learnmove 1, LEER
	learnmove 8, THUNDERSHOCK
	learnmove 15, ROAR
	learnmove 22, QUICK_ATTACK
	learnmove 29, SPARK
	learnmove 36, REFLECT
	learnmove 43, CRUNCH
	learnmove 50, WILD_CHARGE ; Thunder Fang → TM move
	learnmove 57, EXTREMESPEED ; Discharge → event move
	learnmove 64, EXTRASENSORY
	learnmove 71, RAIN_DANCE
	learnmove 78, CALM_MIND
	learnmove 85, AURA_SPHERE ; Thunder → event move
	learnmove 92, THUNDER
	learnmove 99, HIDDEN_POWER ; TM move
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, BITE
	learnmove 1, LEER
	learnmove 8, EMBER
	learnmove 15, ROAR
	learnmove 22, FIRE_SPIN
	learnmove 29, STOMP
	learnmove 36, FLAMETHROWER
	learnmove 43, SWAGGER
	learnmove 50, FLAME_WHEEL ; Fire Fang → new move
	learnmove 57, EXTREMESPEED ; Lava Plume → event move
	learnmove 64, EXTRASENSORY
	learnmove 71, FIRE_BLAST
	learnmove 78, CALM_MIND
	learnmove 85, FLARE_BLITZ ; Eruption → event move
	learnmove 92, SACRED_FIRE
	learnmove 99, HIDDEN_POWER ; TM move
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, BITE
	learnmove 1, LEER
	learnmove 8, BUBBLEBEAM
	learnmove 15, RAIN_DANCE
	learnmove 22, GUST
	learnmove 29, AURORA_BEAM
	learnmove 36, LIGHT_SCREEN ; Mist → new move
	learnmove 43, MIRROR_COAT
	learnmove 50, AIR_SLASH ; Ice Fang → event move
	learnmove 57, EXTREMESPEED ; Tailwind → event move
	learnmove 64, EXTRASENSORY
	learnmove 71, HYDRO_PUMP
	learnmove 78, CALM_MIND
	learnmove 85, HYPER_BEAM ; Blizzard → TM move
	learnmove 92, BLIZZARD
	learnmove 99, HIDDEN_POWER ; TM move
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	evolution EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	learnmove 1, BITE
	learnmove 1, LEER
	learnmove 5, SANDSTORM
	learnmove 10, SCREECH
	learnmove 14, RAGE ; Chip Away → event move
	learnmove 19, ROCK_SLIDE
	learnmove 23, SCARY_FACE
	learnmove 28, THRASH
	learnmove 32, DARK_PULSE
	learnmove 37, ANCIENTPOWER ; Payback → HGSS tutor move
	learnmove 41, CRUNCH
	learnmove 46, EARTHQUAKE
	learnmove 50, STONE_EDGE
	learnmove 55, OUTRAGE ; Hyper Beam → HGSS tutor move
	learnmove 61, HYPER_BEAM
	learnmove 68, CLOSE_COMBAT ; new move
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	evolution EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	learnmove 1, DEFENSE_CURL ; evolution move
	learnmove 1, BITE
	learnmove 1, LEER
	learnmove 5, SANDSTORM
	learnmove 10, SCREECH
	learnmove 14, RAGE ; Chip Away → event move
	learnmove 19, ROCK_SLIDE
	learnmove 23, SCARY_FACE
	learnmove 28, THRASH
	learnmove 34, DARK_PULSE
	learnmove 41, ANCIENTPOWER ; Payback → HGSS tutor move
	learnmove 47, CRUNCH
	learnmove 54, EARTHQUAKE
	learnmove 60, STONE_EDGE
	learnmove 67, OUTRAGE ; Hyper Beam → HGSS tutor move
	learnmove 75, HYPER_BEAM
	learnmove 84, CLOSE_COMBAT ; new move
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, STOMP ; evolution move
	learnmove 1, LOW_KICK ; HGSS tutor move
	learnmove 1, DRAGONBREATH ; GSC TM move
	learnmove 1, BITE
	learnmove 1, LEER
	learnmove 5, SANDSTORM
	learnmove 10, SCREECH
	learnmove 14, RAGE ; Chip Away → event move
	learnmove 19, ROCK_SLIDE
	learnmove 23, SCARY_FACE
	learnmove 28, THRASH
	learnmove 34, DARK_PULSE
	learnmove 41, ANCIENTPOWER ; Payback → HGSS tutor move
	learnmove 47, CRUNCH
	learnmove 54, EARTHQUAKE
	learnmove 63, STONE_EDGE
	learnmove 73, OUTRAGE ; Hyper Beam → HGSS tutor move
	learnmove 82, HYPER_BEAM
	learnmove 92, CLOSE_COMBAT ; new move
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, ROAR ; Whirlwind → similar move
	learnmove 9, GUST
	learnmove 15, DRAGONBREATH ; Dragon Rush → GSC TM move
	learnmove 23, EXTRASENSORY
	learnmove 29, RAIN_DANCE
	learnmove 37, HYDRO_PUMP
	learnmove 43, DRAGON_PULSE ; Aeroblast → TM move
	learnmove 50, AEROBLAST ; Punishment → Aeroblast
	learnmove 57, ANCIENTPOWER
	learnmove 65, SAFEGUARD
	learnmove 71, RECOVER
	learnmove 79, FUTURE_SIGHT
	learnmove 85, REFLECT ; Natural Gift → TM move
	learnmove 93, CALM_MIND
	learnmove 99, HURRICANE ; Sky Attack → new move
	db 0 ; no more level-up moves

Ho_OhEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, ROAR ; Whirlwind → similar move
	learnmove 9, GUST
	learnmove 15, DRAGONBREATH ; Brave Bird → GSC TM move
	learnmove 23, EXTRASENSORY
	learnmove 29, SUNNY_DAY
	learnmove 37, FIRE_BLAST
	learnmove 43, SOLAR_BEAM ; Sacred Fire → Solar Beam
	learnmove 50, SACRED_FIRE ; Punishment → Sacred Fire
	learnmove 57, ANCIENTPOWER
	learnmove 65, SAFEGUARD
	learnmove 71, RECOVER
	learnmove 79, FUTURE_SIGHT
	learnmove 85, LIGHT_SCREEN ; Natural Gift → TM move
	learnmove 93, CALM_MIND
	learnmove 99, BRAVE_BIRD ; Sky Attack → Brave Bird
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, LEECH_SEED
	learnmove 1, CONFUSION
	learnmove 1, RECOVER
	learnmove 1, METRONOME ; Heal Bell → new move
	learnmove 10, SAFEGUARD
	learnmove 19, ENERGY_BALL ; Magical Leaf → TM move
	learnmove 28, ANCIENTPOWER
	learnmove 37, BATON_PASS
	learnmove 46, MOONBLAST ; Natural Gift → new move
	learnmove 55, LIGHT_SCREEN ; Heal Block → TM move
	learnmove 64, FUTURE_SIGHT
	learnmove 73, HEAL_BELL ; Healing Wish → Heal Bell
	learnmove 82, NASTY_PLOT ; Leaf Storm → event move
	learnmove 91, PERISH_SONG
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
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

MagbyEvosAttacks:
	evolution EVOLVE_LEVEL, 30, MAGMAR
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
	learnmove 33, SUNNY_DAY ; Lava Plume → Sunny Day
	learnmove 36, FOCUS_BLAST ; Sunny Day → TM move
	learnmove 40, FLAMETHROWER
	learnmove 43, FIRE_BLAST
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	evolution EVOLVE_LEVEL, 30, ELECTABUZZ
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
	learnmove 33, SCREECH ; Discharge → Screech
	learnmove 36, CROSS_CHOP ; Screech → new move
	learnmove 40, THUNDERBOLT
	learnmove 43, THUNDER
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, METAL_CLAW ; evolution move
	learnmove 1, BULLET_PUNCH
	learnmove 1, QUICK_ATTACK
	learnmove 1, LEER
	learnmove 5, FOCUS_ENERGY
	learnmove 9, PURSUIT
	learnmove 13, FALSE_SWIPE
	learnmove 17, AGILITY
	learnmove 21, WING_ATTACK
	learnmove 25, BUG_BITE ; Fury Cutter → similar move
	learnmove 29, SLASH
	learnmove 33, BUG_BUZZ ; Razor Wind → egg move
	learnmove 37, DEFENSE_CURL ; Iron Defense → similar move
	learnmove 41, X_SCISSOR
	learnmove 45, CRUNCH ; Night Slash → Prism tutor move
	learnmove 49, CLOSE_COMBAT ; Double Hit → new move
	learnmove 50, IRON_HEAD
	learnmove 57, SWORDS_DANCE
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, DRAGONBREATH ; evolution move
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

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, LOW_KICK ; Rolling Kick → HGSS tutor move ; evolution move
	learnmove 1, BULK_UP ; Revenge → TM move
	learnmove 6, FOCUS_ENERGY
	learnmove 10, PURSUIT
	learnmove 15, QUICK_ATTACK
	learnmove 19, RAPID_SPIN
	learnmove 24, FEINT_ATTACK ; Feint → new move
	learnmove 28, COUNTER
	learnmove 33, DOUBLE_KICK ; Triple Kick → similar move
	learnmove 37, AGILITY
	learnmove 42, GYRO_BALL
	learnmove 46, FORESIGHT ; Wide Guard + Quick Guard → new move
	learnmove 50, PROTECT ; Detect → similar move
	learnmove 55, CLOSE_COMBAT
	learnmove 60, REVERSAL ; Endeavor → new move
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	evolution EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	evolution EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	evolution EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, RAGE ; Fake Out → event move
	learnmove 1, FORESIGHT
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	evolution EVOLVE_HOLDING, DUBIOUS_DISC, PORYGON_Z
	db 0 ; no more evolutions
	learnmove 1, TACKLE
	learnmove 1, CONVERSION
	learnmove 1, DEFENSE_CURL
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
	learnmove 67, HYPER_BEAM
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, IRON_TAIL ; evolution move
	learnmove 1, TACKLE
	learnmove 1, DEFENSE_CURL ; Harden → similar move
	learnmove 1, WRAP ; Bind → similar move
	learnmove 4, CURSE
	learnmove 7, ROCK_THROW
	learnmove 10, RAGE
	learnmove 13, ROCK_BLAST ; Rock Tomb → egg move
	learnmove 16, BODY_SLAM ; Stealth Rock → TM move
	learnmove 19, SANDSTORM ; Autotomize → Sandstorm
	learnmove 22, ANCIENTPOWER ; Smack Down → HGSS tutor move
	learnmove 25, DRAGONBREATH
	learnmove 28, HEADBUTT ; Slam → tutor move
	learnmove 31, SCREECH
	learnmove 34, ROCK_SLIDE
	learnmove 37, CRUNCH
	learnmove 40, IRON_HEAD
	learnmove 43, DIG
	learnmove 46, STONE_EDGE
	learnmove 49, DOUBLE_EDGE
	learnmove 52, EARTHQUAKE ; Sandstorm → TM move
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, POWER_GEM
	learnmove 1, HIDDEN_POWER
	learnmove 1, CURSE
	learnmove 1, TACKLE
	learnmove 5, GROWL
	learnmove 9, WATER_GUN
	learnmove 14, CONFUSION
	learnmove 19, DISABLE
	learnmove 23, HEADBUTT
	learnmove 28, WATER_PULSE
	learnmove 32, ZEN_HEADBUTT
	learnmove 36, NASTY_PLOT
	learnmove 41, SWAGGER
	learnmove 45, PSYCHIC_M
	learnmove 49, RAIN_DANCE ; Trump Card → TM move
	learnmove 54, BELLY_DRUM ; Psych Up → egg move
	learnmove 58, RECOVER ; Heal Pulse → similar move
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, TACKLE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, CONFUSION ; evolution move
	learnmove 5, MUD_SLAP ; Sand Attack → similar move
	learnmove 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	learnmove 13, QUICK_ATTACK
	learnmove 17, SWIFT
	learnmove 20, PSYBEAM
	learnmove 25, FUTURE_SIGHT
	learnmove 29, REFLECT ; Psych Up → event move
	learnmove 37, PSYCHIC_M
	learnmove 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnmove 45, POWER_GEM ; Power Swap → new move
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GROWL
	learnmove 1, TACKLE
	learnmove 1, LEER ; Tail Whip → similar move
	learnmove 1, PURSUIT ; evolution move
	learnmove 5, MUD_SLAP ; Sand Attack → similar move
	learnmove 9, DOUBLE_KICK ; Baby-Doll Eyes → Let's Go move
	learnmove 13, QUICK_ATTACK
	learnmove 17, CONFUSE_RAY
	learnmove 20, FEINT_ATTACK
	learnmove 25, TOXIC ; Assurance → TM move
	learnmove 29, SCREECH
	learnmove 37, SUCKER_PUNCH ; Mean Look → tutor move
	learnmove 41, DOUBLE_EDGE ; Last Resort → tutor move
	learnmove 45, MEAN_LOOK ; Guard Swap → Mean Look
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, GIGA_DRAIN ; Bounce → TM move ; evolution move
	learnmove 1, BUBBLEBEAM
	learnmove 1, HYPNOSIS
	learnmove 1, DOUBLE_SLAP
	learnmove 1, PERISH_SONG
	learnmove 27, SWAGGER
	learnmove 48, HYPER_VOICE
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, MEGA_DRAIN
	learnmove 1, HEAL_BELL ; new move
	learnmove 1, SUNNY_DAY
	learnmove 1, STUN_SPORE
	learnmove 39, GROWTH ; Quiver Dance → Growth
	learnmove 49, MOONBLAST ; Petal Blizzard → Gloom move
	learnmove 59, PETAL_DANCE ; evolution move
	learnmove 69, SOLAR_BEAM ; Leaf Storm → TM move
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db 0 ; no more evolutions
    learnmove 1, TACKLE
	db 0 ; no more level-up moves

PichuEvosAttacks:
	evolution EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	learnmove 1, THUNDERSHOCK
	learnmove 1, CHARM
	learnmove 5, LEER ; Tail Whip → similar move
	learnmove 10, SWEET_KISS
	learnmove 13, NASTY_PLOT
	learnmove 18, THUNDER_WAVE
	learnmove 23, SCARY_FACE ; event move
	learnmove 28, SING ; event move
	learnmove 38, PETAL_DANCE ; event move
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	learnmove 1, X_SCISSOR ; evolution move
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
	learnmove 51, CRUNCH ; Quick Guard → new move
	db 0 ; no more level-up moves
