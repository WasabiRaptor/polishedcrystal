INCLUDE "constants.asm"

SECTION "Kanto Egg Moves", ROMX

INCLUDE "data/pokemon/kanto_egg_move_pointers.asm"

KantoEggMoves::

NoKantoEggMoves::
    db $ff

BulbasaurEggMoves:
	db CHARM
	db PETAL_DANCE
	db LIGHT_SCREEN
	db SAFEGUARD
	db POWER_WHIP
	db $ff

CharmanderEggMoves:
	db ANCIENTPOWER
	db BELLY_DRUM
	db BITE
	db CRUNCH
	db DRAGON_DANCE
	db DRAGONBREATH
	db FLARE_BLITZ
	db OUTRAGE
	db $ff

SquirtleEggMoves:
	db CONFUSION
	db FORESIGHT
	db HAZE
	db MIRROR_COAT
	db AQUA_JET
	db $ff

PidgeyEggMoves:
	db PECK
	db FEINT_ATTACK
	db FORESIGHT
	db PURSUIT
	db AIR_SLASH
	db STEEL_WING
	db CHARM
	db EXTREMESPEED
	db BRAVE_BIRD
	db $ff

WeedleEggMoves:
	db $ff
    
CaterpieEggMoves:
	db $ff

RattataEggMoves:
	db FLAME_WHEEL
	db FURY_STRIKES
	db REVERSAL
	db SCREECH
	db BITE
	db COUNTER
	db $ff

Rattata_AlolaEggMoves:
	db $ff

EkansEggMoves:
	db CRUNCH
	db DISABLE
	db PURSUIT
	db SCARY_FACE
	db $ff

SandshrewEggMoves:
	db METAL_CLAW
	db RAPID_SPIN
	db SAFEGUARD
	db COUNTER
	db NIGHT_SLASH
	db $ff

Sandshrew_AlolaEggMoves:
	db $ff

Nidoran_FEggMoves:
	db CHARM
	db DISABLE
	db FOCUS_ENERGY
	db PURSUIT
	db SUPERSONIC ; requires Lickitung
	db TAKE_DOWN
	db $ff

Nidoran_MEggMoves:
	db AMNESIA
	db CONFUSION
	db DISABLE
	db SUPERSONIC ; requires Lickitung
	db TAKE_DOWN
	db CALM_MIND
	db COUNTER
	db $ff

VulpixEggMoves:
	db DISABLE
	db FLARE_BLITZ
	db HYPNOSIS
	db FEINT_ATTACK
	db EXTRASENSORY
	db CHARM
	db ENERGY_BALL
	db ROAR
	db $ff

Vulpix_AlolaEggMoves:
	db $ff

ZubatEggMoves:
	db FEINT_ATTACK
	db GUST
	db HYPNOSIS
	db NASTY_PLOT
	db PURSUIT
	db QUICK_ATTACK
	db ZEN_HEADBUTT
	db BRAVE_BIRD
	db $ff

OddishEggMoves:
	db CHARM
	db RAZOR_LEAF
	db HEALINGLIGHT
	db SWORDS_DANCE
	db $ff

ParasEggMoves:
	db AGILITY
	db LEECH_SEED
	db METAL_CLAW
	db PSYBEAM
	db PURSUIT
	db SCREECH
	db SHADOW_CLAW
	db $ff

VenonatEggMoves:
	db AGILITY
	db BATON_PASS
	db HEALINGLIGHT
	db SCREECH
	db TOXIC_SPIKES
	db $ff

DiglettEggMoves:
	db ANCIENTPOWER
	db FEINT_ATTACK
	db HEADBUTT
	db PURSUIT
	db REVERSAL
	db SCREECH
	db $ff

Diglett_AlolaEggMoves:
	db $ff

MeowthEggMoves:
	db CHARM
	db HYPNOSIS
	db AMNESIA
	db LEER
	db NIGHT_SLASH
	db $ff

Meowth_AlolaEggMoves:
	db $ff

PsyduckEggMoves:
	db CONFUSE_RAY
	db CROSS_CHOP
	db ENCORE
	db FORESIGHT
	db FUTURE_SIGHT
	db HYPNOSIS
	db PSYBEAM
	db ICE_BEAM
	db LIGHT_SCREEN
	db PSYCHIC_M
	db $ff

MankeyEggMoves:
	db ENCORE
	db FORESIGHT
	db BULK_UP
	db REVERSAL
	db ROCK_SLIDE
	db COUNTER
	db GUNK_SHOT
	db NIGHT_SLASH
	db CLOSE_COMBAT
	db $ff

GrowlitheEggMoves:
	db DOUBLE_KICK
	db FIRE_SPIN
	db HEALINGLIGHT
	db THRASH
	db CRUNCH
	db FLARE_BLITZ
	db BODY_SLAM
	db SAFEGUARD
	db CLOSE_COMBAT
	db $ff

PoliwagEggMoves:
	db ENCORE
	db HAZE
	db SPLASH
	db BUBBLE_BEAM
	db WATER_PULSE
	db $ff

AbraEggMoves:
	db BARRIER
	db ENCORE
	db LIGHT_SCREEN
	db KNOCK_OFF
	db $ff

MachopEggMoves:
	db BULLET_PUNCH
	db ENCORE
	db BULK_UP
	db LIGHT_SCREEN
	db MACH_PUNCH
	db CLOSE_COMBAT
	db KNOCK_OFF
	db $ff

BellsproutEggMoves:
	db ENCORE ; requires Hoppip
	db LEECH_LIFE
	db SWORDS_DANCE
	db REFLECT
	db HEALINGLIGHT
	db POWER_WHIP
	db $ff

TentacoolEggMoves:
	db AURORA_BEAM
	db CONFUSE_RAY
	db HAZE
	db MIRROR_COAT
	db RAPID_SPIN
	db SAFEGUARD
	db KNOCK_OFF
	db $ff

GeodudeEggMoves:
	db ROCK_SLIDE
	db $ff

Geodude_AlolaEggMoves:
	db $ff

PonytaEggMoves:
	db CHARM
	db DOUBLE_KICK
	db HYPNOSIS
	db HEALINGLIGHT
	db THRASH
	db QUICK_ATTACK
	db FLAME_WHEEL
	db EXTREMESPEED
	db PLAY_ROUGH
	db $ff

SlowpokeEggMoves:
	db BELLY_DRUM
	db FUTURE_SIGHT
	db STOMP
	db SAFEGUARD
	db ZEN_HEADBUTT
	db $ff

FarfetchDEggMoves:
	db FORESIGHT
	db GUST
	db QUICK_ATTACK
	db STEEL_WING
	db NIGHT_SLASH
	db ROOST
	db $ff

DoduoEggMoves:
	db FEINT_ATTACK
	db HAZE
	db SUPERSONIC
	db QUICK_ATTACK
	db BRAVE_BIRD
	db $ff

SeelEggMoves:
	db DISABLE
	db LICK
	db PECK
	db PERISH_SONG
	db ENCORE
	db WATER_PULSE
	db ICICLE_SPEAR
	db $ff

GrimerEggMoves:
	db HAZE
	db LICK
	db MEAN_LOOK
	db SCARY_FACE
	db $ff

Grimer_AlolaEggMoves:
	db $ff

ShellderEggMoves:
	db BARRIER
	db BUBBLE_BEAM
	db RAPID_SPIN
	db SCREECH
	db TAKE_DOWN
	db WATER_PULSE
	db ICICLE_SPEAR
	db ROCK_BLAST
	db $ff

GastlyEggMoves:
	db ASTONISH
	db DISABLE
	db HAZE
	db PERISH_SONG
	db SCARY_FACE
	db NASTY_PLOT
	db FEINT_ATTACK
	db $ff

OnixEggMoves:
	db DEFENSE_CURL
	db ROCK_SLIDE
	db EARTHQUAKE
	db ROCK_BLAST
	db $ff

DrowzeeEggMoves:
	db BARRIER
	db LIGHT_SCREEN
	db BELLY_DRUM
	db $ff

KrabbyEggMoves:
	db AGILITY
	db HAZE
	db AMNESIA
	db DIG
	db CALM_MIND
	db KNOCK_OFF
	db $ff

ExeggcuteEggMoves:
	db MEGA_DRAIN
	db HEALINGLIGHT
	db HEALINGLIGHT
	db ANCIENTPOWER
	db REFLECT
	db $ff

CuboneEggMoves:
	db ANCIENTPOWER
	db BELLY_DRUM
	db DOUBLE_KICK
	db PERISH_SONG
	db SCREECH
	db ROCK_SLIDE
	db SWORDS_DANCE
	db IRON_HEAD
	db $ff

KoffingEggMoves:
	db PSYBEAM
	db SCREECH
	db DESTINY_BOND
	db PAIN_SPLIT
	db $ff

RhyhornEggMoves:
	db CRUNCH
	db MAGNITUDE
	db PURSUIT
	db REVERSAL
	db THRASH
	db ROCK_SLIDE
	db COUNTER
	db $ff

HappinyEggMoves:
	db METRONOME
	db HEAL_BELL
	db $ff

GoldeenEggMoves:
	db $ff

SpearowEggMoves:
	db $ff

LickitungEggMoves:
	db $ff

MunchlaxEggMoves:
	db CHARM
	db COUNTER
	db CURSE
	db DOUBLE_EDGE
	db LICK
	db GUNK_SHOT
	db $ff

TangelaEggMoves:
	db CONFUSION
	db AMNESIA ; requires Hoppip
	db LEECH_SEED
	db $ff

KangaskhanEggMoves:
	db DISABLE
	db FOCUS_ENERGY
	db FORESIGHT
	db STOMP
	db SAFEGUARD
	db $ff

HorseaEggMoves:
	db AURORA_BEAM
	db DISABLE
	db DRAGON_RAGE
	db DRAGONBREATH
	db OCTAZOOKA
	db SPLASH
	db HAZE
	db WATER_PULSE
	db $ff

Mime_JrEggMoves:
	db CONFUSE_RAY
	db FUTURE_SIGHT
	db HYPNOSIS
	db NASTY_PLOT
	db TRICK
	db $ff

ScytherEggMoves:
	db BATON_PASS
	db BUG_BUZZ
	db REVERSAL
	db COUNTER
	db SAFEGUARD
	db LIGHT_SCREEN
	db NIGHT_SLASH
	db $ff

PinsirEggMoves:
	db FEINT_ATTACK
	db FURY_STRIKES
	db QUICK_ATTACK
	db CLOSE_COMBAT
	db $ff

LaprasEggMoves:
	db AURORA_BEAM
	db DRAGON_DANCE
	db FORESIGHT
	db FUTURE_SIGHT
	db HEAL_BELL
	db $ff

EeveeEggMoves:
	db CHARM
	db $ff

OmanyteEggMoves:
	db AURORA_BEAM
	db BUBBLE_BEAM
	db HAZE
	db SPIKES
	db TOXIC_SPIKES
	db SUPERSONIC
	db WATER_PULSE
	db KNOCK_OFF
	db $ff

KabutoEggMoves:
	db AURORA_BEAM
	db BUBBLE_BEAM
	db CONFUSE_RAY
	db FORESIGHT
	db RAPID_SPIN
	db SCREECH
	db TAKE_DOWN
	db DIG
	db KNOCK_OFF
	db $ff

AerodactylEggMoves:
	db FORESIGHT
	db PURSUIT
	db STEEL_WING
	db ROOST
	db $ff

DratiniEggMoves:
	db EXTREMESPEED ; requires Dragon Shrine Dratini
	db HAZE
	db SUPERSONIC
	db WATER_PULSE
	db AQUA_JET
	db $ff
