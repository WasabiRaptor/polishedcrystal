INCLUDE "constants.asm"

SECTION "Johto Egg Moves", ROMX

INCLUDE "data/pokemon/johto_egg_move_pointers.asm"

JohtoEggMoves::

NoJohtoEggMoves::
    db $ff

ChikoritaEggMoves:
	db LEECH_SEED
	db VINE_WHIP
	db ANCIENTPOWER
	db COUNTER
	db SWORDS_DANCE
	db CHARM
	db HEAL_BELL
	db $ff

CyndaquilEggMoves:
	db DOUBLE_KICK
	db EXTRASENSORY
	db FLARE_BLITZ
	db FORESIGHT
	db FURY_STRIKES
	db REVERSAL
	db CLOSE_COMBAT
	db THRASH
	db QUICK_ATTACK
	db $ff

TotodileEggMoves:
	db DRAGON_DANCE
	db METAL_CLAW
	db CRUNCH
	db THRASH
	db HYDRO_PUMP
	db ANCIENTPOWER
	db ROCK_SLIDE
	db WATER_PULSE
	db AQUA_JET
	db $ff

SentretEggMoves:
	db CHARM
	db FOCUS_ENERGY
	db PURSUIT
	db REVERSAL
	db SLASH
	db DOUBLE_EDGE
	db TRICK
	db $ff

HoothootEggMoves:
	db AGILITY
	db FEINT_ATTACK
	db NIGHT_SHADE
	db SUPERSONIC
	db WING_ATTACK
	db BRAVE_BIRD
	db HURRICANE
	db $ff

LedybaEggMoves:
	db DIZZY_PUNCH
	db ENCORE ; requires Shuckle
	db PSYBEAM
	db SCREECH
	db LIGHT_SCREEN
	db KNOCK_OFF
	db DRAIN_PUNCH
	db $ff

SpinarakEggMoves:
	db BATON_PASS
	db DISABLE
	db MEGAHORN
	db PSYBEAM
	db PURSUIT
	db SONIC_BOOM
	db POISON_JAB
	db NIGHT_SLASH
	db TOXIC_SPIKES
	db $ff

AzurillEggMoves:
	db BELLY_DRUM
	db FORESIGHT
	db FUTURE_SIGHT
	db PERISH_SONG
	db SUPERSONIC
	db LIGHT_SCREEN
	db AMNESIA
	db CALM_MIND
	db AQUA_JET
	db $ff

ChinchouEggMoves:
	db AGILITY ; requires Goldeen
	db HAZE
	db PSYBEAM
	db SCREECH
	db SUPERSONIC
	db WATER_PULSE
	db $ff

TogepiEggMoves:
	db EXTRASENSORY
	db FORESIGHT
	db FUTURE_SIGHT
	db HEALINGLIGHT
	db NASTY_PLOT
	db PECK
	db $ff

NatuEggMoves:
	db DRILL_PECK
	db FEINT_ATTACK
	db HAZE
	db QUICK_ATTACK
	db STEEL_WING
	db ZEN_HEADBUTT
	db ROOST
	db $ff

MareepEggMoves:
	db AGILITY
	db REFLECT
	db MUD_SLAP
	db SCREECH
	db THUNDERBOLT
	db TAKE_DOWN
	db BODY_SLAM
	db SAFEGUARD
	db $ff

BonslyEggMoves:
	db DEFENSE_CURL
	db SELFDESTRUCT
	db $ff

SunkernEggMoves:
	db $ff

YanmaEggMoves:
	db FEINT_ATTACK
	db LEECH_LIFE
	db REVERSAL
	db $ff

WooperEggMoves:
	db COUNTER
	db DOUBLE_KICK
	db ENCORE
	db RECOVER
	db BODY_SLAM
	db ANCIENTPOWER
	db SAFEGUARD
	db $ff

MurkrowEggMoves:
	db CONFUSE_RAY
	db DRILL_PECK
	db PERISH_SONG
	db QUICK_ATTACK
	db SCREECH
	db WING_ATTACK
	db BRAVE_BIRD
	db ROOST
	db $ff

MisdreavusEggMoves:
	db DESTINY_BOND
	db NASTY_PLOT
	db SCREECH
	db $ff

WobbuffetEggMoves:
	db CHARM
	db ENCORE
	db $ff

GirafarigEggMoves:
	db DOUBLE_KICK
	db FORESIGHT
	db FUTURE_SIGHT
	db MEAN_LOOK
	db MIRROR_COAT
	db TAKE_DOWN
	db AMNESIA
	db CALM_MIND
	db $ff

PinecoEggMoves:
	db PIN_MISSILE
	db SWIFT
	db REFLECT
	db TOXIC_SPIKES
	db $ff

DunsparceEggMoves:
	db AGILITY
	db ASTONISH
	db BITE
	db RAGE
	db ANCIENTPOWER
	db ROCK_SLIDE
	db HEX
	db $ff

GligarEggMoves:
	db AGILITY
	db BATON_PASS
	db METAL_CLAW
	db WING_ATTACK
	db COUNTER
	db NIGHT_SLASH
	db $ff

SnubbullEggMoves:
	db FEINT_ATTACK
	db LEER
	db METRONOME
	db REFLECT
	db CRUNCH
	db HEAL_BELL
	db LICK
	db CLOSE_COMBAT
	db $ff

QwilfishEggMoves:
	db BUBBLE_BEAM
	db HAZE
	db SUPERSONIC
	db POISON_JAB
	db WATER_PULSE
	db $ff

HeracrossEggMoves:
	db DEFENSE_CURL
	db PURSUIT
	db $ff

SneaselEggMoves:
	db BITE
	db FORESIGHT
	db PURSUIT
	db COUNTER
	db REFLECT
	db ICICLE_CRASH
	db ICE_SHARD
	db $ff

TeddiursaEggMoves:
	db BELLY_DRUM
	db CROSS_CHOP
	db CRUNCH
	db FOCUS_ENERGY
	db METAL_CLAW
	db PLAY_ROUGH
	db TAKE_DOWN
	db SEISMIC_TOSS
	db COUNTER
	db GUNK_SHOT
	db NIGHT_SLASH
	db CLOSE_COMBAT
	db $ff

SlugmaEggMoves:
	db SMOKESCREEN
	db CURSE
	db $ff

SwinubEggMoves:
	db AVALANCHE
	db BITE
	db TAKE_DOWN
	db BODY_SLAM
	db ROCK_SLIDE
	db ANCIENTPOWER
	db ICICLE_CRASH
	db ICICLE_SPEAR
	db $ff

CorsolaEggMoves:
	db BARRIER
	db CONFUSE_RAY
	db HAZE
	db AMNESIA
	db SCREECH
	db ROCK_SLIDE
	db SAFEGUARD
	db CALM_MIND
	db WATER_PULSE
	db ICICLE_SPEAR
	db $ff

RemoraidEggMoves:
	db SPLASH
	db HAZE
	db OCTAZOOKA
	db ROCK_BLAST
	db SCREECH
	db SUPERSONIC
	db AURORA_BEAM
	db GUNK_SHOT
	db WATER_PULSE
	db $ff

MantykeEggMoves:
	db HAZE
	db MIRROR_COAT
	db SPLASH
	db HYDRO_PUMP
	db GUNK_SHOT
	db $ff

SkarmoryEggMoves:
	db DRILL_PECK
	db PURSUIT
	db BRAVE_BIRD
	db $ff

HoundourEggMoves:
	db DESTINY_BOND
	db FIRE_SPIN
	db PURSUIT
	db RAGE
	db REVERSAL
	db COUNTER
	db WILL_O_WISP
	db $ff

PhanpyEggMoves:
	db FOCUS_ENERGY
	db PLAY_ROUGH
	db WATER_GUN
	db BODY_SLAM
	db ANCIENTPOWER
	db GUNK_SHOT
	db ICE_SHARD
	db $ff

StantlerEggMoves:
	db $ff

DelibirdEggMoves:
	db $ff

ShuckleEggMoves:
	db $ff

WynautEggMoves:
	db $ff

AipomEggMoves:
	db $ff

HoppipEggMoves:
	db $ff

MiltankEggMoves:
	db DIZZY_PUNCH
	db REVERSAL
	db SEISMIC_TOSS
	db $ff

LarvitarEggMoves:
	db DRAGON_DANCE
	db FOCUS_ENERGY
	db PURSUIT
	db STOMP
	db OUTRAGE
	db ANCIENTPOWER
	db IRON_HEAD
	db $ff
