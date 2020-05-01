INCLUDE "constants.asm"

SECTION "Kanto Egg Moves", ROMX

INCLUDE "data/pokemon/kanto/egg_move_pointers.asm"

KantoEggMoves::

NoKantoEggMoves::
    dw 0

BulbasaurEggMoves:
	dw CHARM
	dw PETAL_DANCE
	dw LIGHT_SCREEN
	dw SAFEGUARD
	dw POWER_WHIP
	dw 0

CharmanderEggMoves:
	dw ANCIENTPOWER
	dw BELLY_DRUM
	dw BITE
	dw CRUNCH
	dw DRAGON_DANCE
	dw DRAGONBREATH
	dw FLARE_BLITZ
	dw OUTRAGE
	dw 0

SquirtleEggMoves:
	dw CONFUSION
	dw FORESIGHT
	dw HAZE
	dw MIRROR_COAT
	dw AQUA_JET
	dw 0

PidgeyEggMoves:
	dw PECK
	dw FEINT_ATTACK
	dw FORESIGHT
	dw PURSUIT
	dw AIR_SLASH
	dw STEEL_WING
	dw CHARM
	dw EXTREMESPEED
	dw BRAVE_BIRD
	dw 0

WeedleEggMoves:
	dw 0

CaterpieEggMoves:
	dw 0

RattataEggMoves:
	dw FLAME_WHEEL
	dw FURY_SWIPES
	dw REVERSAL
	dw SCREECH
	dw BITE
	dw COUNTER
	dw 0

Rattata_AlolaEggMoves:
	dw 0

EkansEggMoves:
	dw CRUNCH
	dw DISABLE
	dw PURSUIT
	dw SCARY_FACE
	dw 0

SandshrewEggMoves:
	dw METAL_CLAW
	dw RAPID_SPIN
	dw SAFEGUARD
	dw COUNTER
	dw NIGHT_SLASH
	dw 0

Sandshrew_AlolaEggMoves:
	dw 0

Nidoran_fEggMoves:
	dw CHARM
	dw DISABLE
	dw FOCUS_ENERGY
	dw PURSUIT
	dw SUPERSONIC ; requires Lickitung
	dw TAKE_DOWN
	dw 0

Nidoran_mEggMoves:
	dw AMNESIA
	dw CONFUSION
	dw DISABLE
	dw SUPERSONIC ; requires Lickitung
	dw TAKE_DOWN
	dw CALM_MIND
	dw COUNTER
	dw 0

VulpixEggMoves:
	dw DISABLE
	dw FLARE_BLITZ
	dw HYPNOSIS
	dw FEINT_ATTACK
	dw EXTRASENSORY
	dw CHARM
	dw ENERGY_BALL
	dw ROAR
	dw 0

Vulpix_AlolaEggMoves:
	dw 0

ZubatEggMoves:
	dw FEINT_ATTACK
	dw GUST
	dw HYPNOSIS
	dw NASTY_PLOT
	dw PURSUIT
	dw QUICK_ATTACK
	dw ZEN_HEADBUTT
	dw BRAVE_BIRD
	dw 0

OddishEggMoves:
	dw CHARM
	dw RAZOR_LEAF

	dw SWORDS_DANCE
	dw 0

ParasEggMoves:
	dw AGILITY
	dw LEECH_SEED
	dw METAL_CLAW
	dw PSYBEAM
	dw PURSUIT
	dw SCREECH
	dw SHADOW_CLAW
	dw 0

VenonatEggMoves:
	dw AGILITY
	dw BATON_PASS

	dw SCREECH
	dw TOXIC_SPIKES
	dw 0

DiglettEggMoves:
	dw ANCIENTPOWER
	dw FEINT_ATTACK
	dw HEADBUTT
	dw PURSUIT
	dw REVERSAL
	dw SCREECH
	dw 0

Diglett_AlolaEggMoves:
	dw 0

MeowthEggMoves:
	dw CHARM
	dw HYPNOSIS
	dw AMNESIA
	dw LEER
	dw NIGHT_SLASH
	dw 0

Meowth_AlolaEggMoves:
	dw 0

PsyduckEggMoves:
	dw CONFUSE_RAY
	dw CROSS_CHOP
	dw ENCORE
	dw FORESIGHT
	dw FUTURE_SIGHT
	dw HYPNOSIS
	dw PSYBEAM
	dw ICE_BEAM
	dw LIGHT_SCREEN
	dw PSYCHIC_M
	dw 0

MankeyEggMoves:
	dw ENCORE
	dw FORESIGHT
	dw BULK_UP
	dw REVERSAL
	dw ROCK_SLIDE
	dw COUNTER
	dw GUNK_SHOT
	dw NIGHT_SLASH
	dw CLOSE_COMBAT
	dw 0

GrowlitheEggMoves:
	dw DOUBLE_KICK
	dw FIRE_SPIN

	dw THRASH
	dw CRUNCH
	dw FLARE_BLITZ
	dw BODY_SLAM
	dw SAFEGUARD
	dw CLOSE_COMBAT
	dw 0

PoliwagEggMoves:
	dw ENCORE
	dw HAZE
	dw SPLASH
	dw BUBBLEBEAM
	dw WATER_PULSE
	dw 0

AbraEggMoves:
	dw BARRIER
	dw ENCORE
	dw LIGHT_SCREEN
	dw KNOCK_OFF
	dw 0

MachopEggMoves:
	dw BULLET_PUNCH
	dw ENCORE
	dw BULK_UP
	dw LIGHT_SCREEN
	dw MACH_PUNCH
	dw CLOSE_COMBAT
	dw KNOCK_OFF
	dw 0

BellsproutEggMoves:
	dw ENCORE ; requires Hoppip
	dw LEECH_LIFE
	dw SWORDS_DANCE
	dw REFLECT

	dw POWER_WHIP
	dw 0

TentacoolEggMoves:
	dw AURORA_BEAM
	dw CONFUSE_RAY
	dw HAZE
	dw MIRROR_COAT
	dw RAPID_SPIN
	dw SAFEGUARD
	dw KNOCK_OFF
	dw 0

GeodudeEggMoves:
	dw ROCK_SLIDE
	dw 0

Geodude_AlolaEggMoves:
	dw 0

PonytaEggMoves:
	dw CHARM
	dw DOUBLE_KICK
	dw HYPNOSIS

	dw THRASH
	dw QUICK_ATTACK
	dw FLAME_WHEEL
	dw EXTREMESPEED
	dw PLAY_ROUGH
	dw 0

SlowpokeEggMoves:
	dw BELLY_DRUM
	dw FUTURE_SIGHT
	dw STOMP
	dw SAFEGUARD
	dw ZEN_HEADBUTT
	dw 0

FarfetchdEggMoves:
	dw FORESIGHT
	dw GUST
	dw QUICK_ATTACK
	dw STEEL_WING
	dw NIGHT_SLASH
	dw ROOST
	dw 0

DoduoEggMoves:
	dw FEINT_ATTACK
	dw HAZE
	dw SUPERSONIC
	dw QUICK_ATTACK
	dw BRAVE_BIRD
	dw 0

SeelEggMoves:
	dw DISABLE
	dw LICK
	dw PECK
	dw PERISH_SONG
	dw ENCORE
	dw WATER_PULSE
	dw ICICLE_SPEAR
	dw 0

GrimerEggMoves:
	dw HAZE
	dw LICK
	dw MEAN_LOOK
	dw SCARY_FACE
	dw 0

Grimer_AlolaEggMoves:
	dw 0

ShellderEggMoves:
	dw BARRIER
	dw BUBBLEBEAM
	dw RAPID_SPIN
	dw SCREECH
	dw TAKE_DOWN
	dw WATER_PULSE
	dw ICICLE_SPEAR
	dw ROCK_BLAST
	dw 0

GastlyEggMoves:
	dw ASTONISH
	dw DISABLE
	dw HAZE
	dw PERISH_SONG
	dw SCARY_FACE
	dw NASTY_PLOT
	dw FEINT_ATTACK
	dw 0

OnixEggMoves:
	dw DEFENSE_CURL
	dw ROCK_SLIDE
	dw EARTHQUAKE
	dw ROCK_BLAST
	dw 0

DrowzeeEggMoves:
	dw BARRIER
	dw LIGHT_SCREEN
	dw BELLY_DRUM
	dw 0

KrabbyEggMoves:
	dw AGILITY
	dw HAZE
	dw AMNESIA
	dw DIG
	dw CALM_MIND
	dw KNOCK_OFF
	dw 0

ExeggcuteEggMoves:
	dw MEGA_DRAIN


	dw ANCIENTPOWER
	dw REFLECT
	dw 0

CuboneEggMoves:
	dw ANCIENTPOWER
	dw BELLY_DRUM
	dw DOUBLE_KICK
	dw PERISH_SONG
	dw SCREECH
	dw ROCK_SLIDE
	dw SWORDS_DANCE
	dw IRON_HEAD
	dw 0

KoffingEggMoves:
	dw PSYBEAM
	dw SCREECH
	dw DESTINY_BOND
	dw PAIN_SPLIT
	dw 0

RhyhornEggMoves:
	dw CRUNCH
	dw MAGNITUDE
	dw PURSUIT
	dw REVERSAL
	dw THRASH
	dw ROCK_SLIDE
	dw COUNTER
	dw 0

HappinyEggMoves:
	dw METRONOME
	dw HEAL_BELL
	dw 0

GoldeenEggMoves:
	dw 0

SpearowEggMoves:
	dw 0

LickitungEggMoves:
	dw 0

MunchlaxEggMoves:
	dw CHARM
	dw COUNTER
	dw CURSE
	dw DOUBLE_EDGE
	dw LICK
	dw GUNK_SHOT
	dw 0

TangelaEggMoves:
	dw CONFUSION
	dw AMNESIA ; requires Hoppip
	dw LEECH_SEED
	dw 0

KangaskhanEggMoves:
	dw DISABLE
	dw FOCUS_ENERGY
	dw FORESIGHT
	dw STOMP
	dw SAFEGUARD
	dw 0

HorseaEggMoves:
	dw AURORA_BEAM
	dw DISABLE
	dw DRAGON_RAGE
	dw DRAGONBREATH
	dw OCTAZOOKA
	dw SPLASH
	dw HAZE
	dw WATER_PULSE
	dw 0

Mime_JrEggMoves:
	dw CONFUSE_RAY
	dw FUTURE_SIGHT
	dw HYPNOSIS
	dw NASTY_PLOT
	dw TRICK
	dw 0

ScytherEggMoves:
	dw BATON_PASS
	dw BUG_BUZZ
	dw REVERSAL
	dw COUNTER
	dw SAFEGUARD
	dw LIGHT_SCREEN
	dw NIGHT_SLASH
	dw 0

PinsirEggMoves:
	dw FEINT_ATTACK
	dw FURY_SWIPES
	dw QUICK_ATTACK
	dw CLOSE_COMBAT
	dw 0

LaprasEggMoves:
	dw AURORA_BEAM
	dw DRAGON_DANCE
	dw FORESIGHT
	dw FUTURE_SIGHT
	dw HEAL_BELL
	dw 0

EeveeEggMoves:
	dw CHARM
	dw 0

OmanyteEggMoves:
	dw AURORA_BEAM
	dw BUBBLEBEAM
	dw HAZE
	dw SPIKES
	dw TOXIC_SPIKES
	dw SUPERSONIC
	dw WATER_PULSE
	dw KNOCK_OFF
	dw 0

KabutoEggMoves:
	dw AURORA_BEAM
	dw BUBBLEBEAM
	dw CONFUSE_RAY
	dw FORESIGHT
	dw RAPID_SPIN
	dw SCREECH
	dw TAKE_DOWN
	dw DIG
	dw KNOCK_OFF
	dw 0

AerodactylEggMoves:
	dw FORESIGHT
	dw PURSUIT
	dw STEEL_WING
	dw ROOST
	dw 0

DratiniEggMoves:
	dw EXTREMESPEED ; requires Dragon Shrine Dratini
	dw HAZE
	dw SUPERSONIC
	dw WATER_PULSE
	dw AQUA_JET
	dw 0
