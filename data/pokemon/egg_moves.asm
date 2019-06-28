INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX


INCLUDE "data/pokemon/egg_move_pointers.asm"

INCLUDE "data/pokemon/variant_egg_move_pointers.asm"

EggMoves::

EeveeEggMoves:
	db CHARM
	db $ff

ZoruaEggMoves:
	db $ff

RockruffEggMoves:
	db $ff

MimikyuEggMoves:
	db $ff

MeowthEggMoves:
	db CHARM
	db HYPNOSIS
	db AMNESIA
	db LEER
	db NIGHT_SLASH
	db $ff
Meowth_AlolaEggMoves:
	db CHARM
	db HYPNOSIS
	db AMNESIA
	db LEER
	db NIGHT_SLASH
	db $ff

TogepiEggMoves:
	db EXTRASENSORY
	db FORESIGHT
	db FUTURE_SIGHT
	db HEALINGLIGHT
	db NASTY_PLOT
	db PECK
	db $ff

ChinglingEggMoves:
	db $ff

EspurrEggMoves:
	db $ff

TimburrEggMoves:
	db $ff

PurrloinEggMoves:
	db $ff

GrimerEggMoves:
	db HAZE
	db LICK
	db MEAN_LOOK
	db SCARY_FACE
	db $ff
Grimer_AlolaEggMoves:
	db HAZE
	db LICK
	db MEAN_LOOK
	db SCARY_FACE
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

SeviperEggMoves:
	db $ff

ZangooseEggMoves:
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

SwabluEggMoves:
	db $ff

MienfooEggMoves:
	db $ff

HawluchaEggMoves:
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

ShinxEggMoves:
	db $ff

SandshrewEggMoves:
	db METAL_CLAW
	db RAPID_SPIN
	db SAFEGUARD
	db COUNTER
	db NIGHT_SLASH
	db $ff
Sandshrew_AlolaEggMoves:
	db METAL_CLAW
	db RAPID_SPIN
	db SAFEGUARD
	db COUNTER
	db NIGHT_SLASH
	db $ff

CutieflyEggMoves:
	db $ff

FlabebeEggMoves:
	db $ff

IgglybuffEggMoves:
	db FEINT_ATTACK
	db PERISH_SONG
	db MOONBLAST
	db $ff

ChespinEggMoves:
	db $ff

DeerlingEggMoves:
	db $ff

CottoneeEggMoves:
	db $ff

FoongusEggMoves:
	db $ff

PhantumpEggMoves:
	db $ff

BonslyEggMoves:
	db DEFENSE_CURL
	db SELFDESTRUCT
	db $ff

PassimianEggMoves:
	db $ff

StuffulEggMoves:
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
Girafarig_BetaEggMoves:
	db DOUBLE_KICK
	db FORESIGHT
	db FUTURE_SIGHT
	db MEAN_LOOK
	db MIRROR_COAT
	db TAKE_DOWN
	db AMNESIA
	db CALM_MIND
	db $ff

HeracrossEggMoves:
	db DEFENSE_CURL
	db PURSUIT
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

JoltikEggMoves:
	db $ff

PinecoEggMoves:
	db PIN_MISSILE
	db SWIFT
	db REFLECT
	db TOXIC_SPIKES
	db $ff

YanmaEggMoves:
	db FEINT_ATTACK
	db LEECH_LIFE
	db REVERSAL
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

VenipedeEggMoves:
	db $ff

MorelullEggMoves:
	db $ff

ShroomishEggMoves:
	db $ff

CroagunkEggMoves:
	db $ff

SandileEggMoves:
	db $ff

TympoleEggMoves:
	db $ff

DrampaEggMoves:
	db $ff

GoomyEggMoves:
	db $ff

MisdreavusEggMoves:
	db DESTINY_BOND
	db NASTY_PLOT
	db SCREECH
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

OshawottEggMoves:
	db $ff

BuizelEggMoves:
	db $ff

AzurilEggMoves:
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

LaprasEggMoves:
	db AURORA_BEAM
	db DRAGON_DANCE
	db FORESIGHT
	db FUTURE_SIGHT
	db HEAL_BELL
	db $ff

AnorithEggMoves:
	db $ff

DewpiderEggMoves:
	db $ff

FeebasEggMoves:
	db $ff

FinneonEggMoves:
	db $ff

QwilfishEggMoves:
	db BUBBLE_BEAM
	db HAZE
	db SUPERSONIC
	db POISON_JAB
	db WATER_PULSE
	db $ff

ChinchouEggMoves:
	db AGILITY ; requires Goldeen
	db HAZE
	db PSYBEAM
	db SCREECH
	db SUPERSONIC
	db WATER_PULSE
	db $ff

StunfiskEggMoves:
	db $ff

DwebbleEggMoves:
	db $ff

TyrogueEggMoves:
	db BULLET_PUNCH
	db HI_JUMP_KICK
	db MACH_PUNCH
	db PURSUIT
	db RAPID_SPIN
	db $ff

RioluEggMoves:
	db $ff

MedititeEggMoves:
	db $ff

SnoverEggMoves:
	db $ff

FerroseedEggMoves:
	db $ff

ShuckleEggMoves:
	db $ff

NosepassEggMoves:
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

NoibatEggMoves:
	db $ff

DruddigonEggMoves:
	db $ff
	
AxewEggMoves:
	db $ff

Jangmo_oEggMoves:
	db $ff

DeinoEggMoves:
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

LittenEggMoves:
	db $ff

FennekinEggMoves:
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
	db DISABLE
	;db FLARE_BLITZ
	db HYPNOSIS
	db FEINT_ATTACK
	db EXTRASENSORY
	db CHARM
	db ENERGY_BALL
	db ROAR
	db $ff

SlugmaEggMoves:
	db SMOKESCREEN
	db CURSE
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

FletchlingEggMoves:
	db $ff

HeatmorEggMoves:
	db $ff

DurantEggMoves:
	db $ff

ArchenEggMoves:
	db $ff

RoggenrolaEggMoves:
	db $ff

AmauraEggMoves:
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

SnoruntEggMoves:
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

NatuEggMoves:
	db DRILL_PECK
	db FEINT_ATTACK
	db HAZE
	db QUICK_ATTACK
	db STEEL_WING
	db ZEN_HEADBUTT
	db ROOST
	db $ff

SigilyphEggMoves:
	db $ff

DrillburEggMoves:
	db $ff

HonedgeEggMoves:
	db $ff

PawniardEggMoves:
	db $ff

YamaskEggMoves:
	db $ff

LitwickEggMoves:
	db $ff

SpiritombEggMoves:
	db $ff

DuskullEggMoves:
	db $ff

NoEggMoves:
	db $ff
