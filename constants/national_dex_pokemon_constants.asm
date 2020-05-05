
    const_def
	const GROUP_GENERATION_ZERO
    const GROUP_GENERATION_ONE
    const GROUP_GENERATION_TWO
    const GROUP_GENERATION_THREE
    const GROUP_GENERATION_FOUR
    const GROUP_GENERATION_FIVE
    const GROUP_GENERATION_SIX
    const GROUP_GENERATION_SEVEN
    const GROUP_GENERATION_EIGHT ;ironic
NUM_POKEMON_GROUPS EQU const_value +-1

	const_def 0 ;regional forms
	const KANTONIAN
	const ALOLAN
GALARIAN EQU ALOLAN

	const_def 0
	const DEFAULT_FORM
	const MEGA_FORM
	const MEGA_FORM_Y

MEGA_FORM_X EQU MEGA_FORM
PRIMAL_FORM EQU MEGA_FORM
GIGA_FORM EQU MEGA_FORM

NUM_POKEMON EQU $fd
EGG EQU $fe

	nat_dexmon_group 1, GROUP_GENERATION_ZERO
	nat_dexmon POKEMON_EGG
NUM_OTHER_POKEMON EQU const_value +-1

; the national dex number that is shown is defined in the base data struct, it doesn't matter what constant a pokemon is, bulbasaur could be $ab and as long as its base data is defined right it will always display as #001
	nat_dexmon_group 1, GROUP_GENERATION_ONE
	nat_dexmon BULBASAUR
	nat_dexmon IVYSAUR
	nat_dexmon VENUSAUR
	nat_dexmon_form MEGA
	nat_dexmon_form GIGA
	nat_dexmon CHARMANDER
	nat_dexmon CHARMELEON
	nat_dexmon CHARIZARD
	nat_dexmon_form MEGA_X
	nat_dexmon_form MEGA_Y
	nat_dexmon_form GIGA
	nat_dexmon SQUIRTLE
	nat_dexmon WARTORTLE
	nat_dexmon BLASTOISE
	nat_dexmon_form MEGA
	nat_dexmon_form GIGA
	nat_dexmon CATERPIE
	nat_dexmon METAPOD
	nat_dexmon BUTTERFREE
	nat_dexmon_form GIGA
	nat_dexmon WEEDLE
	nat_dexmon KAKUNA
	nat_dexmon BEEDRILL
	nat_dexmon_form MEGA
	nat_dexmon PIDGEY
	nat_dexmon PIDGEOTTO
	nat_dexmon PIDGEOT
	nat_dexmon_form MEGA
	nat_dexmon RATTATA
	nat_dexmon_form ALOLA
	nat_dexmon RATICATE
	nat_dexmon_form ALOLA
	nat_dexmon SPEAROW
	nat_dexmon FEAROW
	nat_dexmon EKANS
	nat_dexmon ARBOK
	nat_dexmon PIKACHU
	nat_dexmon_form COSPLAY
	nat_dexmon_form ROCKSTAR
	nat_dexmon_form BELLE
	nat_dexmon_form POPSTAR
	nat_dexmon_form PHD
	nat_dexmon_form LIBRE
	nat_dexmon_form OG_CAP
	nat_dexmon_form HOENN_CAP
	nat_dexmon_form SINNOH_CAP
	nat_dexmon_form UNOVA_CAP
	nat_dexmon_form KALOS_CAP
	nat_dexmon_form ALOLA_CAP
	nat_dexmon_form PARTNER_CAP
	nat_dexmon_form LETS_GO
	nat_dexmon_form GIGA
	nat_dexmon RAICHU
	nat_dexmon_form ALOLA
	nat_dexmon SANDSHREW
	nat_dexmon_form ALOLA
	nat_dexmon SANDSLASH
	nat_dexmon_form ALOLA
	nat_dexmon NIDORAN_F
	nat_dexmon NIDORINA
	nat_dexmon NIDOQUEEN
	nat_dexmon NIDORAN_M
	nat_dexmon NIDORINO
	nat_dexmon NIDOKING
	nat_dexmon CLEFAIRY
	nat_dexmon CLEFABLE
	nat_dexmon VULPIX
	nat_dexmon_form ALOLA
	nat_dexmon_form LOKI
	nat_dexmon_form LOKI_WINTER
	nat_dexmon NINETALES
	nat_dexmon_form ALOLA
	nat_dexmon_form LOKI
	nat_dexmon_form LOKI_WINTER
	nat_dexmon JIGGLYPUFF
	nat_dexmon WIGGLYTUFF
	nat_dexmon ZUBAT
	nat_dexmon GOLBAT
	nat_dexmon ODDISH
	nat_dexmon GLOOM
	nat_dexmon VILEPLUME
	nat_dexmon PARAS
	nat_dexmon PARASECT
	nat_dexmon VENONAT
	nat_dexmon VENOMOTH
	nat_dexmon DIGLETT
	nat_dexmon_form ALOLA
	nat_dexmon DUGTRIO
	nat_dexmon_form ALOLA
	nat_dexmon MEOWTH
	nat_dexmon_form ALOLA
	nat_dexmon_form GALAR
	nat_dexmon_form KANTO_GIGA
	nat_dexmon PERSIAN
	nat_dexmon_form ALOLA
	nat_dexmon PSYDUCK
	nat_dexmon GOLDUCK
	nat_dexmon MANKEY
	nat_dexmon PRIMEAPE
	nat_dexmon GROWLITHE
	nat_dexmon ARCANINE
	nat_dexmon POLIWAG
	nat_dexmon POLIWHIRL
	nat_dexmon POLIWRATH
	nat_dexmon ABRA
	nat_dexmon KADABRA
	nat_dexmon ALAKAZAM
	nat_dexmon_form MEGA
	nat_dexmon MACHOP
	nat_dexmon MACHOKE
	nat_dexmon MACHAMP
	nat_dexmon_form GIGA
	nat_dexmon BELLSPROUT
	nat_dexmon WEEPINBELL
	nat_dexmon VICTREEBEL
	nat_dexmon TENTACOOL
	nat_dexmon TENTACRUEL
	nat_dexmon GEODUDE
	nat_dexmon_form ALOLA
	nat_dexmon GRAVELER
	nat_dexmon_form ALOLA
	nat_dexmon GOLEM
	nat_dexmon_form ALOLA
	nat_dexmon PONYTA
	nat_dexmon_form GALAR
	nat_dexmon RAPIDASH
	nat_dexmon_form GALAR
	nat_dexmon SLOWPOKE
	nat_dexmon_form GALAR
	nat_dexmon SLOWBRO
	nat_dexmon_form MEGA
	nat_dexmon MAGNEMITE
	nat_dexmon MAGNETON
	nat_dexmon FARFETCHD
	nat_dexmon_form GALAR
	nat_dexmon DODUO
	nat_dexmon DODRIO
	nat_dexmon SEEL
	nat_dexmon DEWGONG
	nat_dexmon GRIMER
	nat_dexmon_form ALOLA
	nat_dexmon MUK
	nat_dexmon_form ALOLA
	nat_dexmon SHELLDER
	nat_dexmon CLOYSTER
	nat_dexmon GASTLY
	nat_dexmon HAUNTER
	nat_dexmon GENGAR
	nat_dexmon_form MEGA
	nat_dexmon_form GIGA
	nat_dexmon ONIX
	nat_dexmon DROWZEE
	nat_dexmon HYPNO
	nat_dexmon KRABBY
	nat_dexmon KINGLER
	nat_dexmon_form GIGA
	nat_dexmon VOLTORB
	nat_dexmon ELECTRODE
	nat_dexmon EXEGGCUTE
	nat_dexmon EXEGGUTOR
	nat_dexmon_form ALOLA
	nat_dexmon CUBONE
	nat_dexmon MAROWAK
	nat_dexmon_form ALOLA
	nat_dexmon HITMONLEE
	nat_dexmon HITMONCHAN
	nat_dexmon LICKITUNG
	nat_dexmon KOFFING
	nat_dexmon WEEZING
	nat_dexmon_form GALAR
	nat_dexmon RHYHORN
	nat_dexmon RHYDON
	nat_dexmon CHANSEY
	nat_dexmon TANGELA
	nat_dexmon KANGASKHAN
	nat_dexmon_form MEGA
	nat_dexmon HORSEA
	nat_dexmon SEADRA
	nat_dexmon GOLDEEN
	nat_dexmon SEAKING
	nat_dexmon STARYU
	nat_dexmon STARMIE
	nat_dexmon MRMIME
	nat_dexmon_form GALAR
	nat_dexmon SCYTHER
	nat_dexmon JYNX
	nat_dexmon ELECTABUZZ
	nat_dexmon MAGMAR
	nat_dexmon PINSIR
	nat_dexmon_form MEGA
	nat_dexmon TAUROS
	nat_dexmon MAGIKARP
	nat_dexmon GYARADOS
	nat_dexmon_form MEGA
	nat_dexmon LAPRAS
	nat_dexmon_form GIGA
	nat_dexmon DITTO
	nat_dexmon EEVEE
	nat_dexmon_form LETS_GO
	nat_dexmon_form GIGA
	nat_dexmon VAPOREON
	nat_dexmon JOLTEON
	nat_dexmon FLAREON
	nat_dexmon_form DONUT
	nat_dexmon PORYGON
	nat_dexmon OMANYTE
	nat_dexmon OMASTAR
	nat_dexmon KABUTO
	nat_dexmon KABUTOPS
	nat_dexmon AERODACTYL
	nat_dexmon_form MEGA
	nat_dexmon SNORLAX
	nat_dexmon_form GIGA
	nat_dexmon ARTICUNO
	nat_dexmon_form GALAR
	nat_dexmon ZAPDOS
	nat_dexmon_form GALAR
	nat_dexmon MOLTRES
	nat_dexmon_form GALAR
	nat_dexmon DRATINI
	nat_dexmon DRAGONAIR
	nat_dexmon DRAGONITE
	nat_dexmon MEWTWO
	nat_dexmon_form MEGA_X
	nat_dexmon_form MEGA_Y
	nat_dexmon MEW
NUM_KANTO_POKEMON EQU const_value +-1

;for pikachu and its stupid amount of outfits and hats
	const_def 0
	const DEFAULT_PIKACHU
	const COSPLAY_PIKACHU
	const ROCKSTAR_PIKACHU
	const PIKACHU_BELLE
	const PIKACHU_POPSTAR
	const PIKACHU_PHD
	const PIKACHU_LIBRE
	const ORIGINAL_CAP_PIKACHU
	const HOENN_CAP_PIKACHU
	const SINNOH_CAP_PIKACHU
	const UNOVA_CAP_PIKACHU
	const KALOS_CAP_PIKACHU
	const ALOLA_CAP_PIKACHU
	const PARTNER_CAP_PIKACHU
	const LETS_GO_PIKACHU
	const GIGA_PIKACHU

	const_def 0
	const DEFAULT_EEVEE
	const LETS_GO_EEVEE

;I hereby dub thee snowshrew, to save thee from a name that makes absolutely no sense
	nat_dexmon_group SANDSHREW, GROUP_GENERATION_ONE
	nat_dexmon SNOWSHREW
	nat_dexmon SNOWSLASH

; for the sake of fun and little lore bits in the dex
	nat_dexmon_group VULPIX, GROUP_GENERATION_ONE
	nat_dexmon KEOKEO

;johto mons
	nat_dexmon_group 1, GROUP_GENERATION_TWO
	nat_dexmon CHIKORITA
	nat_dexmon BAYLEEF
	nat_dexmon MEGANIUM
	nat_dexmon CYNDAQUIL
	nat_dexmon QUILAVA
	nat_dexmon TYPHLOSION
	nat_dexmon TOTODILE
	nat_dexmon CROCONAW
	nat_dexmon FERALIGATR
	nat_dexmon SENTRET
	nat_dexmon FURRET
	nat_dexmon HOOTHOOT
	nat_dexmon NOCTOWL
	nat_dexmon LEDYBA
	nat_dexmon LEDIAN
	nat_dexmon SPINARAK
	nat_dexmon ARIADOS
	nat_dexmon CROBAT
	nat_dexmon CHINCHOU
	nat_dexmon LANTURN
	nat_dexmon PICHU
	nat_dexmon_form SPIKY_EARED
	nat_dexmon CLEFFA
	nat_dexmon IGGLYBUFF
	nat_dexmon TOGEPI
	nat_dexmon TOGETIC
	nat_dexmon NATU
	nat_dexmon XATU
	nat_dexmon MAREEP
	nat_dexmon FLAAFFY
	nat_dexmon AMPHAROS
	nat_dexmon_form MEGA
	nat_dexmon BELLOSSOM
	nat_dexmon MARILL
	nat_dexmon AZUMARILL
	nat_dexmon SUDOWOODO
	nat_dexmon POLITOED
	nat_dexmon HOPPIP
	nat_dexmon SKIPLOOM
	nat_dexmon JUMPLUFF
	nat_dexmon AIPOM
	nat_dexmon SUNKERN
	nat_dexmon SUNFLORA
	nat_dexmon YANMA
	nat_dexmon WOOPER
	nat_dexmon QUAGSIRE
	nat_dexmon ESPEON
	nat_dexmon UMBREON
	nat_dexmon MURKROW
	nat_dexmon SLOWKING
	nat_dexmon MISDREAVUS
	nat_dexmon UNOWN
	nat_dexmon_form A
	nat_dexmon_form B
	nat_dexmon_form C
	nat_dexmon_form D
	nat_dexmon_form E
	nat_dexmon_form F
	nat_dexmon_form G
	nat_dexmon_form H
	nat_dexmon_form I
	nat_dexmon_form J
	nat_dexmon_form K
	nat_dexmon_form L
	nat_dexmon_form M
	nat_dexmon_form N
	nat_dexmon_form O
	nat_dexmon_form P
	nat_dexmon_form Q
	nat_dexmon_form R
	nat_dexmon_form S
	nat_dexmon_form T
	nat_dexmon_form U
	nat_dexmon_form V
	nat_dexmon_form W
	nat_dexmon_form X
	nat_dexmon_form Y
	nat_dexmon_form Z
	nat_dexmon_form EXCLAMATION_MARK
	nat_dexmon_form QUESTION_MARK
	nat_dexmon WOBBUFFET
	nat_dexmon GIRAFARIG
	nat_dexmon PINECO
	nat_dexmon FORRETRESS
	nat_dexmon DUNSPARCE
	nat_dexmon GLIGAR
	nat_dexmon STEELIX
	nat_dexmon_form MEGA
	nat_dexmon SNUBBULL
	nat_dexmon GRANBULL
	nat_dexmon QWILFISH
	nat_dexmon SCIZOR
	nat_dexmon_form MEGA
	nat_dexmon SHUCKLE
	nat_dexmon HERACROSS
	nat_dexmon_form MEGA
	nat_dexmon SNEASEL
	nat_dexmon TEDDIURSA
	nat_dexmon URSARING
	nat_dexmon SLUGMA
	nat_dexmon MAGCARGO
	nat_dexmon SWINUB
	nat_dexmon PILOSWINE
	nat_dexmon CORSOLA
	nat_dexmon_form GALAR
	nat_dexmon REMORAID
	nat_dexmon OCTILLERY
	nat_dexmon DELIBIRD
	nat_dexmon MANTINE
	nat_dexmon SKARMORY
	nat_dexmon HOUNDOUR
	nat_dexmon HOUNDOOM
	nat_dexmon_form MEGA
	nat_dexmon KINGDRA
	nat_dexmon PHANPY
	nat_dexmon DONPHAN
	nat_dexmon PORYGON2
	nat_dexmon STANTLER
	nat_dexmon SMEARGLE
	nat_dexmon TYROGUE
	nat_dexmon HITMONTOP
	nat_dexmon SMOOCHUM
	nat_dexmon ELEKID
	nat_dexmon MAGBY
	nat_dexmon MILTANK
	nat_dexmon BLISSEY
	nat_dexmon RAIKOU
	nat_dexmon_form BETA
	nat_dexmon ENTEI
	nat_dexmon_form BETA
	nat_dexmon SUICUNE
	nat_dexmon_form BETA
	nat_dexmon LARVITAR
	nat_dexmon PUPITAR
	nat_dexmon TYRANITAR
	nat_dexmon_form MEGA
	nat_dexmon LUGIA
	nat_dexmon HO_OH
	nat_dexmon CELEBI
NUM_JOHTO_POKEMON EQU const_value +-1

	const_def
	const DEFAULT_PICHU
	const SPIKY_EARED_PICHU

; hoo boy Unown you've got a lot of forms
	const_def
	const UNOWN_A
	const UNOWN_B
	const UNOWN_C
	const UNOWN_D
	const UNOWN_E
	const UNOWN_F
	const UNOWN_G
	const UNOWN_H
	const UNOWN_I
	const UNOWN_J
	const UNOWN_K
	const UNOWN_L
	const UNOWN_M
	const UNOWN_N
	const UNOWN_O
	const UNOWN_P
	const UNOWN_Q
	const UNOWN_R
	const UNOWN_S
	const UNOWN_T
	const UNOWN_U
	const UNOWN_V
	const UNOWN_W
	const UNOWN_X
	const UNOWN_Y
	const UNOWN_Z
	const UNOWN_EXCLAMATION_MARK
	const UNOWN_QUESTION_MARK
NUM_UNOWN EQU const_value + -1

; hoenn mons
	nat_dexmon_group 1, GROUP_GENERATION_THREE
	nat_dexmon TREECKO
	nat_dexmon GROVYLE
	nat_dexmon SCEPTILE
	nat_dexmon_form MEGA
	nat_dexmon TORCHIC
	nat_dexmon COMBUSKEN
	nat_dexmon BLAZIKEN
	nat_dexmon_form MEGA
	nat_dexmon MUDKIP
	nat_dexmon MARSHTOMP
	nat_dexmon SWAMPERT
	nat_dexmon_form MEGA
	nat_dexmon POOCHYENA
	nat_dexmon MIGHTYENA
	nat_dexmon ZIGZAGOON
	nat_dexmon_form GALAR
	nat_dexmon LINOONE
	nat_dexmon_form GALAR
	nat_dexmon WURMPLE
	nat_dexmon SILCOON
	nat_dexmon BEAUTIFLY
	nat_dexmon CASCOON
	nat_dexmon DUSTOX
	nat_dexmon LOTAD
	nat_dexmon LOMBRE
	nat_dexmon LUDICOLO
	nat_dexmon SEEDOT
	nat_dexmon NUZLEAF
	nat_dexmon SHIFTRY
	nat_dexmon TAILLOW
	nat_dexmon SWELLOW
	nat_dexmon WINGULL
	nat_dexmon PELIPPER
	nat_dexmon RALTS
	nat_dexmon KIRLIA
	nat_dexmon GARDEVOIR
	nat_dexmon_form MEGA
	nat_dexmon SURSKIT
	nat_dexmon MASQUERAIN
	nat_dexmon SHROOMISH
	nat_dexmon BRELOOM
	nat_dexmon SLAKOTH
	nat_dexmon VIGOROTH
	nat_dexmon SLAKING
	nat_dexmon NINCADA
	nat_dexmon NINJASK
	nat_dexmon SHEDINJA
	nat_dexmon WHISMUR
	nat_dexmon LOUDRED
	nat_dexmon EXPLOUD
	nat_dexmon MAKUHITA
	nat_dexmon HARIYAMA
	nat_dexmon AZURILL
	nat_dexmon NOSEPASS
	nat_dexmon SKITTY
	nat_dexmon DELCATTY
	nat_dexmon SABLEYE
	nat_dexmon_form MEGA
	nat_dexmon MAWILE
	nat_dexmon_form MEGA
	nat_dexmon ARON
	nat_dexmon LAIRON
	nat_dexmon AGGRON
	nat_dexmon_form MEGA
	nat_dexmon MEDITITE
	nat_dexmon MEDICHAM
	nat_dexmon_form MEGA
	nat_dexmon ELECTRIKE
	nat_dexmon MANECTRIC
	nat_dexmon_form MEGA
	nat_dexmon PLUSLE
	nat_dexmon MINUN
	nat_dexmon VOLBEAT
	nat_dexmon ILLUMISE
	nat_dexmon ROSELIA
	nat_dexmon GULPIN
	nat_dexmon SWALOT
	nat_dexmon CARVANHA
	nat_dexmon SHARPEDO
	nat_dexmon_form MEGA
	nat_dexmon WAILMER
	nat_dexmon WAILORD
	nat_dexmon NUMEL
	nat_dexmon CAMERUPT
	nat_dexmon_form MEGA
	nat_dexmon TORKOAL
	nat_dexmon SPOINK
	nat_dexmon GRUMPIG
	nat_dexmon SPINDA
	nat_dexmon TRAPINCH
	nat_dexmon VIBRAVA
	nat_dexmon FLYGON
	nat_dexmon CACNEA
	nat_dexmon CACTURNE
	nat_dexmon SWABLU
	nat_dexmon ALTARIA
	nat_dexmon_form MEGA
	nat_dexmon ZANGOOSE
	nat_dexmon SEVIPER
	nat_dexmon LUNATONE
	nat_dexmon SOLROCK
	nat_dexmon BARBOACH
	nat_dexmon WHISCASH
	nat_dexmon CORPHISH
	nat_dexmon CRAWDAUNT
	nat_dexmon BALTOY
	nat_dexmon CLAYDOL
	nat_dexmon LILEEP
	nat_dexmon CRADILY
	nat_dexmon ANORITH
	nat_dexmon ARMALDO
	nat_dexmon FEEBAS
	nat_dexmon MILOTIC
	nat_dexmon CASTFORM
	nat_dexmon_form SUN
	nat_dexmon_form RAIN
	nat_dexmon_form SNOW
	nat_dexmon KECLEON
	nat_dexmon SHUPPET
	nat_dexmon BANETTE
	nat_dexmon_form MEGA
	nat_dexmon DUSKULL
	nat_dexmon DUSCLOPS
	nat_dexmon TROPIUS
	nat_dexmon CHIMECHO
	nat_dexmon ABSOL
	nat_dexmon_form MEGA
	nat_dexmon WYNAUT
	nat_dexmon SNORUNT
	nat_dexmon GLALIE
	nat_dexmon_form MEGA
	nat_dexmon SPHEAL
	nat_dexmon SEALEO
	nat_dexmon WALREIN
	nat_dexmon CLAMPERL
	nat_dexmon HUNTAIL
	nat_dexmon GOREBYSS
	nat_dexmon RELICANTH
	nat_dexmon LUVDISC
	nat_dexmon BAGON
	nat_dexmon SHELGON
	nat_dexmon SALAMENCE
	nat_dexmon_form MEGA
	nat_dexmon BELDUM
	nat_dexmon METANG
	nat_dexmon METAGROSS
	nat_dexmon_form MEGA
	nat_dexmon REGIROCK
	nat_dexmon REGICE
	nat_dexmon REGISTEEL
	nat_dexmon LATIAS
	nat_dexmon_form MEGA
	nat_dexmon LATIOS
	nat_dexmon_form MEGA
	nat_dexmon KYOGRE
	nat_dexmon_form PRIMAL
	nat_dexmon GROUDON
	nat_dexmon_form PRIMAL
	nat_dexmon RAYQUAZA
	nat_dexmon_form MEGA
	nat_dexmon JIRACHI
	nat_dexmon DEOXYS
	nat_dexmon_form ATTACK
	nat_dexmon_form DEFENSE
	nat_dexmon_form SPEED
NUM_HOENN_POKEMON EQU const_value +-1

	const_def
	const NORMAL_CASTFORM
	const SUNNY_CASTFORM
	const RAINY_CASTFORM
	const SNOWY_CASTFORM

	const_def
	const NORMAL_DEOXYS
	const ATTACK_DEOXYS
	const DEFENSE_DEOXYS
	const SPEED_DEOXYS

; sinnoh mons
	nat_dexmon_group 1, GROUP_GENERATION_FOUR
	nat_dexmon TURTWIG
	nat_dexmon GROTLE
	nat_dexmon TORTERRA
	nat_dexmon CHIMCHAR
	nat_dexmon MONFERNO
	nat_dexmon INFERNAPE
	nat_dexmon PIPLUP
	nat_dexmon PRINPLUP
	nat_dexmon EMPOLEON
	nat_dexmon STARLY
	nat_dexmon STARAVIA
	nat_dexmon STARAPTOR
	nat_dexmon BIDOOF
	nat_dexmon BIBAREL
	nat_dexmon KRICKETOT
	nat_dexmon KRICKETUNE
	nat_dexmon SHINX
	nat_dexmon LUXIO
	nat_dexmon LUXRAY
	nat_dexmon BUDEW
	nat_dexmon ROSERADE
	nat_dexmon CRANIDOS
	nat_dexmon RAMPARDOS
	nat_dexmon SHIELDON
	nat_dexmon BASTIODON
	nat_dexmon BURMY
	nat_dexmon_form SAND
	nat_dexmon_form TRASH
	nat_dexmon WORMADAM
	nat_dexmon_form SAND
	nat_dexmon_form TRASH
	nat_dexmon MOTHIM
	nat_dexmon COMBEE
	nat_dexmon VESPIQUEN
	nat_dexmon PACHIRISU
	nat_dexmon BUIZEL
	nat_dexmon FLOATZEL
	nat_dexmon CHERUBI
	nat_dexmon CHERRIM
	nat_dexmon_form OVERCAST
	nat_dexmon SHELLOS
	nat_dexmon_form WEST
	nat_dexmon GASTRODON
	nat_dexmon_form WEST
	nat_dexmon AMBIPOM
	nat_dexmon DRIFLOON
	nat_dexmon DRIFBLIM
	nat_dexmon BUNEARY
	nat_dexmon LOPUNNY
	nat_dexmon_form MEGA
	nat_dexmon MISMAGIUS
	nat_dexmon HONCHKROW
	nat_dexmon GLAMEOW
	nat_dexmon PURUGLY
	nat_dexmon CHINGLING
	nat_dexmon STUNKY
	nat_dexmon SKUNTANK
	nat_dexmon BRONZOR
	nat_dexmon BRONZONG
	nat_dexmon BONSLY
	nat_dexmon MIME_JR
	nat_dexmon HAPPINY
	nat_dexmon CHATOT
	nat_dexmon SPIRITOMB
	nat_dexmon GIBLE
	nat_dexmon GABITE
	nat_dexmon GARCHOMP
	nat_dexmon_form MEGA
	nat_dexmon MUNCHLAX
	nat_dexmon RIOLU
	nat_dexmon LUCARIO
	nat_dexmon_form MEGA
	nat_dexmon HIPPOPOTAS
	nat_dexmon HIPPOWDON
	nat_dexmon SKORUPI
	nat_dexmon DRAPION
	nat_dexmon CROAGUNK
	nat_dexmon TOXICROAK
	nat_dexmon CARNIVINE
	nat_dexmon FINNEON
	nat_dexmon LUMINEON
	nat_dexmon MANTYKE
	nat_dexmon SNOVER
	nat_dexmon ABOMASNOW
	nat_dexmon_form MEGA
	nat_dexmon WEAVILE
	nat_dexmon MAGNEZONE
	nat_dexmon LICKILICKY
	nat_dexmon RHYPERIOR
	nat_dexmon TANGROWTH
	nat_dexmon ELECTIVIRE
	nat_dexmon MAGMORTAR
	nat_dexmon TOGEKISS
	nat_dexmon YANMEGA
	nat_dexmon LEAFEON
	nat_dexmon GLACEON
	nat_dexmon GLISCOR
	nat_dexmon MAMOSWINE
	nat_dexmon PORYGON_Z
	nat_dexmon GALLADE
	nat_dexmon_form MEGA
	nat_dexmon PROBOPASS
	nat_dexmon DUSKNOIR
	nat_dexmon FROSLASS
	nat_dexmon ROTOM
	nat_dexmon_form HEAT
	nat_dexmon_form WASH
	nat_dexmon_form FROST
	nat_dexmon_form FAN
	nat_dexmon_form MOW
	nat_dexmon_form DEX
	nat_dexmon UXIE
	nat_dexmon MESPRIT
	nat_dexmon AZELF
	nat_dexmon DIALGA
	nat_dexmon PALKIA
	nat_dexmon HEATRAN
	nat_dexmon REGIGIGAS
	nat_dexmon GIRATINA
	nat_dexmon_form ORIGIN
	nat_dexmon CRESSELIA
	nat_dexmon PHIONE
	nat_dexmon MANAPHY
	nat_dexmon DARKRAI
	nat_dexmon SHAYMIN
	nat_dexmon_form SKY
	nat_dexmon ARCEUS ; types can be handled by the multitype ability via the item it holds and palette can be done in much the same way
NUM_SINNOH_POKEMON EQU const_value +-1

	const_def ;for burmy and wormadam
	const PLANT_CLOAK
	const SANDY_CLOAK
	const TRASH_CLOAK

	const_def
	const CHERRIM_OVERCAST
	const CHERRIM_SUNSHINE

	const_def  ;shellos and gastrodon
	const EAST_SEA
	const WEST_SEA

	const_def
	const DEFAULT_ROTOM
	const HEAT_ROTOM
	const WASH_ROTOM
	const FROST_ROTOM
	const FAN_ROTOM
	const MOW_ROTOM
	const DEX_ROTOM
	const PHONE_ROTOM

	const_def
	const GIRATINA_ALTERED
	const GIRATINA_ORIGIN

	const_def
	const SHAYMIN_LAND
	const SHAYMIN_SKY

; unova mons
	nat_dexmon_group 1, GROUP_GENERATION_FIVE
	nat_dexmon VICTINI
	nat_dexmon SNIVY
	nat_dexmon SERVINE
	nat_dexmon SERPERIOR
	nat_dexmon TEPIG
	nat_dexmon PIGNITE
	nat_dexmon EMBOAR
	nat_dexmon OSHAWOTT
	nat_dexmon DEWOTT
	nat_dexmon SAMUROTT
	nat_dexmon PATRAT
	nat_dexmon WATCHOG
	nat_dexmon LILLIPUP
	nat_dexmon HERDIER
	nat_dexmon STOUTlAND
	nat_dexmon PURRLOIN
	nat_dexmon LIEPARD
	nat_dexmon PANSAGE
	nat_dexmon SIMISAGE
	nat_dexmon PANSEAR
	nat_dexmon SIMISEAR
	nat_dexmon PANPOUR
	nat_dexmon SIMIPOUR
	nat_dexmon MUNNA
	nat_dexmon MUSHARNA
	nat_dexmon PIDOVE
	nat_dexmon TRANQUILL
	nat_dexmon UNFEZANT
	nat_dexmon_form F
	nat_dexmon BLITZLE
	nat_dexmon ZEBSTRIKA
	nat_dexmon ROGGENROLA
	nat_dexmon BOLDORE
	nat_dexmon GIGALITH
	nat_dexmon WOOBAT
	nat_dexmon SWOOBAT
	nat_dexmon DRILBUR
	nat_dexmon EXCADRILL
	nat_dexmon AUDINO
	nat_dexmon_form MEGA
	nat_dexmon TIMBURR
	nat_dexmon GURDURR
	nat_dexmon CONKELDURR
	nat_dexmon TYMPOLE
	nat_dexmon PALPITOAD
	nat_dexmon SEISMITOAD
	nat_dexmon THROH
	nat_dexmon SAWK
	nat_dexmon SEWADDLE
	nat_dexmon SWADLOON
	nat_dexmon LEAVANNY
	nat_dexmon VENIPEDE
	nat_dexmon WHIRLIPEDE
	nat_dexmon SCOLIPEDE
	nat_dexmon COTTONEE
	nat_dexmon WHIMSICOTT
	nat_dexmon PETILIL
	nat_dexmon LILLIGANT
	nat_dexmon BASCULIN
	nat_dexmon SANDILE
	nat_dexmon KROKOROK
	nat_dexmon KROOKODILE
	nat_dexmon DARUMAKA
	nat_dexmon_form GALAR
	nat_dexmon DARMANITAN
	nat_dexmon_form ZEN
	nat_dexmon_form GALAR
	nat_dexmon_form GALAR_ZEN
	nat_dexmon MARACTUS
	nat_dexmon DWEBBLE
	nat_dexmon CRUSTLE
	nat_dexmon SCRAGGY
	nat_dexmon SCRAFTY
	nat_dexmon SIGILYPH
	nat_dexmon YAMASK
	nat_dexmon_form GALAR
	nat_dexmon COFAGRIGUS
	nat_dexmon TIRTOUGA
	nat_dexmon CARRACOSTA
	nat_dexmon ARCHEN
	nat_dexmon ARCHEOPS
	nat_dexmon TRUBBISH
	nat_dexmon GARBODOR
	nat_dexmon_form GIGA
	nat_dexmon ZORUA
	nat_dexmon ZOROARK
	nat_dexmon MINCCINO
	nat_dexmon CINCCINO
	nat_dexmon GOTHITA
	nat_dexmon GOTHORITA
	nat_dexmon GOTHITELLE
	nat_dexmon SOLOSIS
	nat_dexmon DUOSION
	nat_dexmon REUNICLUS
	nat_dexmon DUCKLETT
	nat_dexmon SWANNA
	nat_dexmon VANILLITE
	nat_dexmon VANILLISH
	nat_dexmon VANILLUXE
	nat_dexmon DEERLING
	nat_dexmon_form SUMMER
	nat_dexmon_form AUTUMN
	nat_dexmon_form WINTER
	nat_dexmon SAWSBUCK
	nat_dexmon_form SUMMER
	nat_dexmon_form AUTUMN
	nat_dexmon_form WINTER
	nat_dexmon EMOLGA
	nat_dexmon KARRABLAST
	nat_dexmon ESCAVALIER
	nat_dexmon FOONGUS
	nat_dexmon AMOONGUSS
	nat_dexmon FRILLISH
	nat_dexmon JELLICENT
	nat_dexmon ALOMOMOLA
	nat_dexmon JOLTIK
	nat_dexmon GALVANTULA
	nat_dexmon FERROSEED
	nat_dexmon FERROTHORN
	nat_dexmon KLINK
	nat_dexmon KLANG
	nat_dexmon KLINKLANG
	nat_dexmon TYNAMO
	nat_dexmon EELEKTRIK
	nat_dexmon EELEKTROSS
	nat_dexmon ELGYEM
	nat_dexmon BEHEEYEM
	nat_dexmon LITWICK
	nat_dexmon LAMPENT
	nat_dexmon CHANDELURE
	nat_dexmon AXEW
	nat_dexmon FRAXURE
	nat_dexmon HAXORUS
	nat_dexmon CUBCHOO
	nat_dexmon BEARTIC
	nat_dexmon CRYOGONAL
	nat_dexmon SHELMET
	nat_dexmon ACCELGOR
	nat_dexmon STUNFISK
	nat_dexmon_form GALAR
	nat_dexmon MIENFOO
	nat_dexmon MIENSHAO
	nat_dexmon DRUDDIGON
	nat_dexmon GOLETT
	nat_dexmon GOLURK
	nat_dexmon PAWNIARD
	nat_dexmon BISHARP
	nat_dexmon BOUFFALANT
	nat_dexmon RUFFLET
	nat_dexmon BRAVIARY
	nat_dexmon VULLABY
	nat_dexmon MANDIBUZZ
	nat_dexmon HEATMOR
	nat_dexmon DURANT
	nat_dexmon DEINO
	nat_dexmon ZWEILOUS
	nat_dexmon HYDREIGON
	nat_dexmon LARVESTA
	nat_dexmon VOLCARONA
	nat_dexmon COBALION
	nat_dexmon TERRAKION
	nat_dexmon VIRIZION
	nat_dexmon TORNADUS
	nat_dexmon_form THERIAN
	nat_dexmon THUNDURUS
	nat_dexmon_form THERIAN
	nat_dexmon RESHIRAM
	nat_dexmon ZEKROM
	nat_dexmon LANDORUS
	nat_dexmon_form THERIAN
	nat_dexmon KYUREM
	nat_dexmon_form BLACK
	nat_dexmon_form WHITE
	nat_dexmon KELDEO
	nat_dexmon_form RESOLUTE
	nat_dexmon MELOETTA
	nat_dexmon_form PIROUETTE
	nat_dexmon GENESECT
NUM_UNOVA_POKEMON EQU const_value +-1

	const_def
	const DARMANITAN_STANDARD
	const DARMANITAN_GALAR
	const DARMANITAN_ZEN
	const DARMANITAN_GALAR_ZEN

	const_def ;deerling and sawsbuck
	const SPRING_FORM
	const SUMMER_FORM
	const AUTUMN_FORM
	const WINTER_FORM

	const_def ;for the guys sitting on clouds
	const INCARNATE_FORM
	const THERIAN_FORM

	const_def
	const KYRUEM_DEFAULT
	const WHITE_KYRUEM
	const BLACK_KYRUEM

	const_def
	const KELDEO_ORDINARY
	const KELDEO_RESOLUTE

	const_def
	const MELOETTA_ARIA
	const MELOETTA_PIROUETTE

; kalos pokemon
	nat_dexmon_group 1, GROUP_GENERATION_SIX
	nat_dexmon CHESPIN
	nat_dexmon QUILLADIN
	nat_dexmon CHESNAUGHT
	nat_dexmon FENNEKIN
	nat_dexmon BRAIXEN
	nat_dexmon DELPHOX
	nat_dexmon FROAKIE
	nat_dexmon FROGADIER
	nat_dexmon GRENINJA
	nat_dexmon_form BATTLE_BOND
	nat_dexmon_form ASH
	nat_dexmon BUNNELBY
	nat_dexmon DIGGERSBY
	nat_dexmon FLETCHLING
	nat_dexmon FLETCHINDER
	nat_dexmon TALONFLAME
	nat_dexmon SCATTERBUG
	nat_dexmon SPEWPA
	nat_dexmon VIVILLON ; oh boy you seem like a bag of worms when we get to you
	nat_dexmon_form ARCHIPELEGO
	nat_dexmon_form CONTINENTAL
	nat_dexmon_form ELEGANT
	nat_dexmon_form GARDEN
	nat_dexmon_form HIGH_PLAINS
	nat_dexmon_form ICY_SNOW
	nat_dexmon_form JUNGLE
	nat_dexmon_form MARINE
	nat_dexmon_form MODERN
	nat_dexmon_form MONSOON
	nat_dexmon_form OCEAN
	nat_dexmon_form POLAR
	nat_dexmon_form RIVER
	nat_dexmon_form SANDSTORM
	nat_dexmon_form SAVANNAH
	nat_dexmon_form SUN
	nat_dexmon_form TUNDRA
	nat_dexmon_form POKEBALL
	nat_dexmon_form FANCY
	nat_dexmon LITLEO
	nat_dexmon PYROAR
	nat_dexmon_form F
	nat_dexmon FLABEBE ; the color variance can be handled by vary colors by DVs
	nat_dexmon FLOETTE
	nat_dexmon_form ETERNAL_FLOWER
	nat_dexmon FLORGES
	nat_dexmon SKIDDO
	nat_dexmon GOGOAT
	nat_dexmon PANCHAM
	nat_dexmon PANGORO
	nat_dexmon FURFROU
	nat_dexmon_form HEART
	nat_dexmon_form STAR
	nat_dexmon_form DIAMOND
	nat_dexmon_form DEBUTANTE
	nat_dexmon_form MATRON
	nat_dexmon_form DANDY
	nat_dexmon_form LA_REINE
	nat_dexmon_form KABUKI
	nat_dexmon_form PHARAOH
	nat_dexmon ESPURR
	nat_dexmon MEOWSTIC
	nat_dexmon_form F
	nat_dexmon HONEDGE
	nat_dexmon DOUBLADE
	nat_dexmon AEGISLASH
	nat_dexmon_form BLADE
	nat_dexmon SPRITZEE
	nat_dexmon AROMATISSE
	nat_dexmon SWIRLIX
	nat_dexmon SLURPUFF
	nat_dexmon INKAY
	nat_dexmon MALAMAR
	nat_dexmon BINACLE
	nat_dexmon BARBARACLE
	nat_dexmon SKRELP
	nat_dexmon DRAGALGE
	nat_dexmon CLAUNCHER
	nat_dexmon CLAWITZER
	nat_dexmon HELIOPTILE
	nat_dexmon HELIOLISK
	nat_dexmon TYRUNT
	nat_dexmon TYRANTRUM
	nat_dexmon AMAURA
	nat_dexmon AURORUS
	nat_dexmon SYLVEON
	nat_dexmon HAWLUCHA
	nat_dexmon DEDENNE
	nat_dexmon CARBINK
	nat_dexmon GOOMY
	nat_dexmon SLIGGOO
	nat_dexmon GOODRA
	nat_dexmon KLEFKI
	nat_dexmon PHANTUMP
	nat_dexmon TREVENANT
	nat_dexmon PUMPKABOO
	nat_dexmon_form AVERAGE
	nat_dexmon_form LARGE
	nat_dexmon_form SUPER
	nat_dexmon GOURGEIST
	nat_dexmon_form AVERAGE
	nat_dexmon_form LARGE
	nat_dexmon_form SUPER
	nat_dexmon BERGMITE
	nat_dexmon AVALUGG
	nat_dexmon NOIBAT
	nat_dexmon NOIVERN
	nat_dexmon XERNEAS ; neutral mode and active mode do absoluely nothing
	nat_dexmon YVELTAL
	nat_dexmon ZYGARDE
	nat_dexmon_form FIFTY_PERCENT
	nat_dexmon_form COMPLETE
	nat_dexmon_form COMPLETE
	nat_dexmon_form COMPLETE
	nat_dexmon DIANCIE
	nat_dexmon_form MEGA
	nat_dexmon HOOPA
	nat_dexmon_form UNBOUND
	nat_dexmon VOLCANION
NUM_KALOS_POKEMON EQU const_value +-1

	const_def
	const NORMAL_GRENINJA
	const BATTLE_BOND_GRENINJA
	const ASH_GRENINJA

	const_def
	const VIVILLON_MEADOW
	const VIVILLON_ARCHIPELEGO
	const VIVILLON_CONTINENTAL
	const VIVILLON_ELEGANT
	const VIVILLON_GARDEN
	const VIVILLON_HIGH_PLAINS
	const VIVILLON_ICY_SNOW
	const VIVILLON_JUNGLE
	const VIVILLON_MARINE
	const VIVILLON_MODERN
	const VIVILLON_MONSOON
	const VIVILLON_OCEAN
	const VIVILLON_POLAR
	const VIVILLON_RIVER
	const VIVILLON_SANDSTORM
	const VIVILLON_SAVANNAH
	const VIVILLON_SUN
	const VIVILLON_TUNDRA
	const VIVILLON_POKEBALL
	const VIVILLON_FANCY

	const_def
	const NORMAL_FLOETTE
	const ETERNAL_FLOWER_FLOETTE

	const_def
	const FURFROU_NORMAL
	const FURFROU_HEART
	const FURFROU_STAR
	const FURFROU_DIAMOND
	const FURFROU_DEBUTANTE
	const FURFROU_MATRON
	const FURFROU_DANDY
	const FURFROU_LA_REINE
	const FURFROU_KABUKI
	const FURFROU_PHARAOH

	const_def
	const AEGISLASH_SHIELD
	const AEGISLASH_BLADE

	const_def ;pumpkaboo and gourgeist
	const SMALL_SIZE
	const AVERAGE_SIZE
	const LARGE_SIZE
	const SUPER_SIZE

	const_def
	const ZYGARDE_10
	const ZYGARDE_50
	const ZYGARDE_100
	const ZYGARDE_10_COMPLETE
	const ZYGARDE_50_COMPLETE

	const_def
	const HOOPA_CONFINED
	const HOOPA_UNBOUND

;Gen mons
	nat_dexmon_group 1, GROUP_GENERATION_SEVEN
	nat_dexmon ROWLET
	nat_dexmon DARTRIX
	nat_dexmon DECIDUEYE
	nat_dexmon LITTEN
	nat_dexmon TORRACAT
	nat_dexmon INCINEROAR
	nat_dexmon POPPLIO
	nat_dexmon BRIONNE
	nat_dexmon PRIMARINA
	nat_dexmon PIKIPEK
	nat_dexmon TRUMBEAK
	nat_dexmon TOUCANNON
	nat_dexmon YUNGOOS
	nat_dexmon GUMSHOOS
	nat_dexmon GRUBBIN
	nat_dexmon CHARJABUG
	nat_dexmon VIKAVOLT
	nat_dexmon CRABRAWLER
	nat_dexmon CRABOMINABLE ; objectively worst looking pokemon
	nat_dexmon ORICORIO
	nat_dexmon_form POM_POM
	nat_dexmon_form PAU
	nat_dexmon_form SENSU
	nat_dexmon CUTIEFLY
	nat_dexmon RIBOMBEE
	nat_dexmon ROCKRUFF
	nat_dexmon_form OWN_TEMPO
	nat_dexmon LYCANROC ;time of day indexes would put dawn as 0 so thats where it goes
	nat_dexmon_form MIDDAY
	nat_dexmon_form DUSK
	nat_dexmon_form MIDNIGHT
	nat_dexmon WISHIWASHI
	nat_dexmon_form SCHOOL
	nat_dexmon MAREANIE
	nat_dexmon TOXAPEX
	nat_dexmon MUDBRAY
	nat_dexmon MUDSDALE
	nat_dexmon DEWPIDER
	nat_dexmon ARAQUANID
	nat_dexmon FOMANTIS
	nat_dexmon LURANTIS
	nat_dexmon MORELULL
	nat_dexmon SHIINOTIC
	nat_dexmon SALANDIT
	nat_dexmon SALAZZLE
	nat_dexmon STUFFUL
	nat_dexmon BEWEAR
	nat_dexmon BOUNSWEET
	nat_dexmon STEENEE
	nat_dexmon TSAREENA
	nat_dexmon COMFEY
	nat_dexmon ORANGURU
	nat_dexmon PASSIMIAN
	nat_dexmon WIMPOD
	nat_dexmon GOLISOPOD
	nat_dexmon SANDYGAST
	nat_dexmon PALLOSSAND
	nat_dexmon PYUKUMUKU
	nat_dexmon TYPE_NULL
	nat_dexmon SILVALLY ; types are handled by the RKS system ability via the item it holds and palette can be done in much the same way
	nat_dexmon MINIOR
	nat_dexmon_form CORE
	nat_dexmon KOMALA
	nat_dexmon TURTONATOR
	nat_dexmon TOGEDEMARU
	nat_dexmon MIMIKYU
	nat_dexmon_form BUSTED
	nat_dexmon BRUXISH
	nat_dexmon DRAMPA
	nat_dexmon DHELMISE
	nat_dexmon JANGMO_O
	nat_dexmon HAKAMO_O
	nat_dexmon KOMMO_O
	nat_dexmon TAPU_KOKO
	nat_dexmon TAPU_LELE
	nat_dexmon TAPU_BULU
	nat_dexmon TAPU_FINI
	nat_dexmon COSMOG
	nat_dexmon COSMOEM
	nat_dexmon SOLGALEO ; radiant sun phase does nothing
	nat_dexmon LUNALA ; full moon phase does nothing
	nat_dexmon NIHILEGO
	nat_dexmon BUZZSWOLE
	nat_dexmon PHEROMOSA
	nat_dexmon XURKITREE
	nat_dexmon CELESTEELA
	nat_dexmon KARTANA
	nat_dexmon GUZZLORD
	nat_dexmon NECROZMA
	nat_dexmon_form DAWN_WINGS
	nat_dexmon_form DUSK_MANE
	nat_dexmon_form ULTRA
	nat_dexmon MAGEARNA
	nat_dexmon MARSHADOW ;zenith does absolutely nothing, didn't even know it changed
	nat_dexmon POIPOLE
	nat_dexmon NAGANADEL
	nat_dexmon STAKATAKA
	nat_dexmon BLACEPHALON
	nat_dexmon ZERAORA
	nat_dexmon MELTAN
	nat_dexmon MELMETAL
	nat_dexmon_form GIGA
NUM_ALOLA_POKEMON EQU const_value +-1

	const_def
	const NORMAL_ROCKRUFF
	const OWN_TEMPO_ROCKRUFF

	const_def
	const LYCANROC_DAWN
	const LYCANROC_MIDDAY
	const LYCANROC_DUSK
	const LYCANROC_MIDNIGHT
	const LYCANROC_WAFFLE

	const_def
	const WISHIWASHI_SOLO
	const WISHIWASHI_SCHOOL

	const_def
	const MINIOR_SHIELDS_UP
	const MINIOR_CORE

	const_def
	const MIMIKYU_DISGUISED
	const MIMIKYU_BUSTED

	const_def
	const NORMAL_NECROZMA
	const DUSK_MANE_NECROZMA
	const DAWN_WINGS_NECROZMA
	const ULTRA_NECROZMA

	nat_dexmon_group 1, GROUP_GENERATION_EIGHT
	nat_dexmon GROOKEY
	nat_dexmon THWACKEY
	nat_dexmon RILLABOOM
	nat_dexmon_form GIGA
	nat_dexmon SCORBUNNY
	nat_dexmon RABOOT
	nat_dexmon CINDERACE ;the hot bun
	nat_dexmon_form GIGA
	nat_dexmon SOBBLE
	nat_dexmon DRIZZILE
	nat_dexmon INTELEON ;the rantsona
	nat_dexmon_form GIGA
	nat_dexmon SKWOVET
	nat_dexmon GREEDENT
	nat_dexmon ROOKIDEE
	nat_dexmon CORVISQUIRE
	nat_dexmon CORVIKNIGHT
	nat_dexmon_form GIGA
	nat_dexmon BLIPBUG
	nat_dexmon DOTTLER
	nat_dexmon ORBEETLE
	nat_dexmon_form GIGA
	nat_dexmon NICKIT
	nat_dexmon THIEVUL
	nat_dexmon GROSSIFLEUR
	nat_dexmon ELDEGROSS
	nat_dexmon WOOLOO ; now you're blue
	nat_dexmon DUBWOOL
	nat_dexmon CHEWTLE
	nat_dexmon DREDNAW
	nat_dexmon_form GIGA
	nat_dexmon YAMPER
	nat_dexmon BOLTUND
	nat_dexmon ROLYCOLY
	nat_dexmon CARKOAL ; ree
	nat_dexmon COALOSSAL ; you ruined my roly coal boi ceast to exist you Rhydon 2
	nat_dexmon_form GIGA
	nat_dexmon APPLIN
	nat_dexmon FLAPPLE
	nat_dexmon_form GIGA
	nat_dexmon APPLETUN
	nat_dexmon_form GIGA
	nat_dexmon SILICOBRA
	nat_dexmon SANDACONDA
	nat_dexmon_form GIGA
	nat_dexmon CRAMORANT
	nat_dexmon_form GULPING
	nat_dexmon_form GORGING
	nat_dexmon ARROKUDA
	nat_dexmon BARRASKEWDA
	nat_dexmon TOXEL
	nat_dexmon TOXTRICITY
	nat_dexmon_form LOW_KEY
	nat_dexmon_form GIGA
	nat_dexmon SIZZLIPEDE
	nat_dexmon CENTISKORCH
	nat_dexmon_form GIGA
	nat_dexmon CLOBBOPUS
	nat_dexmon GRAPPLOCT
	nat_dexmon SINISTEA
	nat_dexmon POLTEAGEIST
	nat_dexmon HATRENNA
	nat_dexmon HATTREM
	nat_dexmon HATTERENE
	nat_dexmon_form GIGA
	nat_dexmon IMPIDIMP
	nat_dexmon MORGREM
	nat_dexmon GRIMMSNARL
	nat_dexmon_form GIGA
	nat_dexmon OBSTAGOON
	nat_dexmon PERRSERKER
	nat_dexmon CURSOLA
	nat_dexmon SIRFETCHD
	nat_dexmon MRRIME
	nat_dexmon RUNERIGUS
	nat_dexmon MILCERY
	nat_dexmon ALCREMIE
	nat_dexmon_form GIGA
	nat_dexmon FALINKS
	nat_dexmon PINCURCHIN
	nat_dexmon SNOM
	nat_dexmon FROSMOTH
	nat_dexmon STONJOURNER
	nat_dexmon EISCUE
	nat_dexmon_form NO_ICE
	nat_dexmon INDEEDEE
	nat_dexmon MORPEKO
	nat_dexmon_form HANGRY
	nat_dexmon CUFANT
	nat_dexmon COPPERAJAH
	nat_dexmon_form GIGA
	nat_dexmon DRACOZOLT;why
	nat_dexmon ARCTOZOLT	;god why
	nat_dexmon DRACOVISH		;oh god please why
	nat_dexmon ARCTOVISH 			;these should never have been made
	nat_dexmon DURALDON
	nat_dexmon_form GIGA
	nat_dexmon DREEPY
	nat_dexmon DRAKLOAK
	nat_dexmon DRAGAPULT
	nat_dexmon ZACIAN
	nat_dexmon_form SWORD
	nat_dexmon ZAMAZENTA
	nat_dexmon_form SHIELD
	nat_dexmon ETERNATUS
	nat_dexmon_form ETERNAMAX
NUM_GALAR_POKEMON EQU const_value +-1

;and theres more later, why gen 8, why must you be stupid
	const_def
	const CRAMORANT_NORMAL
	const CRAMORANT_GULPING
	const CRAMORANT_GORGING

	const_def
	const TOXTRICITY_AMPED
	const TOXRICITY_LOW_KEY

	const_def
	const STRABERRY_TOPPING
	const BLUEBERRY_TOPPING
	const HEART_TOPPING
	const STAR_TOPPING
	const SHAMROCK_TOPPING
	const FLOWER_TOPPING
	const BOW_TOPPING

	const_def
	const EISCUE_ICE_FACE
	const EISCUE_NO_ICE

	const_def
	const MORPEKO_FULL_BELLY
	const MORPEKO_HANGRY

	const_def
	const ZACIAN_HERO
	const ZACIAN_SWORD

	const_def
	const ZAMAZENTA_HERO
	const ZAMAZENTA_ARMORED
