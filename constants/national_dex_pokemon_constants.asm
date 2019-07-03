
    const_def 1
    const REGION_KANTO
    const REGION_JOHTO
    const REGION_HOENN
    const REGION_SINNOH
    const REGION_UNOVA
    const REGION_KALOS
    const REGION_ALOLA
    const REGION_GALAR ;ironic

ALTERNATE_FORM EQU 10 ; it'll be several years before we hit a gen 10 right... RIGHT!?

EGG EQU $fe

;national dex constants if that ever becomes a thing
    nat_dexmon_group 1, REGION_KANTO
	nat_dexmon BULBASAUR  ; 01
	nat_dexmon IVYSAUR    ; 02
	nat_dexmon VENUSAUR   ; 03
	nat_dexmon CHARMANDER ; 04
	nat_dexmon CHARMELEON ; 05
	nat_dexmon CHARIZARD  ; 06
	nat_dexmon SQUIRTLE   ; 07
	nat_dexmon WARTORTLE  ; 08
	nat_dexmon BLASTOISE  ; 09
	nat_dexmon CATERPIE   ; 0a
	nat_dexmon METAPOD    ; 0b
	nat_dexmon BUTTERFREE ; 0c
	nat_dexmon WEEDLE     ; 0d
	nat_dexmon KAKUNA     ; 0e
	nat_dexmon BEEDRILL   ; 0f
	nat_dexmon PIDGEY     ; 10
	nat_dexmon PIDGEOTTO  ; 11
	nat_dexmon PIDGEOT    ; 12
	nat_dexmon RATTATA    ; 13
	nat_dexmon RATICATE   ; 14
	nat_dexmon SPEAROW    ; 15
	nat_dexmon FEAROW     ; 16
	nat_dexmon EKANS      ; 17
	nat_dexmon ARBOK      ; 18
	nat_dexmon PICHU      ; 19
	nat_dexmon PIKACHU    ; 1a
	nat_dexmon RAICHU     ; 1b
	nat_dexmon SANDSHREW  ; 1c
	nat_dexmon SANDSLASH  ; 1d
	nat_dexmon NIDORAN    ; 1e
	nat_dexmon NIDORINO   ; 1f
	nat_dexmon NIDOKING   ; 20
	nat_dexmon CLEFFA     ; 21
	nat_dexmon CLEFAIRY   ; 22
	nat_dexmon CLEFABLE   ; 23
	nat_dexmon VULPIX     ; 24
	nat_dexmon NINETALES  ; 25
	nat_dexmon IGGLYBUFF  ; 26
	nat_dexmon JIGGLYPUFF ; 27
	nat_dexmon WIGGLYTUFF ; 28
	nat_dexmon ZUBAT      ; 29
	nat_dexmon GOLBAT     ; 2a
	nat_dexmon CROBAT     ; 2b
	nat_dexmon ODDISH     ; 2c
	nat_dexmon GLOOM      ; 2d
	nat_dexmon VILEPLUME  ; 2e
	nat_dexmon BELLOSSOM  ; 2f
	nat_dexmon PARAS      ; 30
	nat_dexmon PARASECT   ; 31
	nat_dexmon VENONAT    ; 32
	nat_dexmon VENOMOTH   ; 33
	nat_dexmon DIGLETT    ; 34
	nat_dexmon DUGTRIO    ; 35
	nat_dexmon MEOWTH     ; 36
	nat_dexmon PERSIAN    ; 37
	nat_dexmon PSYDUCK    ; 38
	nat_dexmon GOLDUCK    ; 39
	nat_dexmon MANKEY     ; 3a
	nat_dexmon PRIMEAPE   ; 3b
	nat_dexmon GROWLITHE  ; 3c
	nat_dexmon ARCANINE   ; 3d
	nat_dexmon POLIWAG    ; 3e
	nat_dexmon POLIWHIRL  ; 3f
	nat_dexmon POLIWRATH  ; 40
	nat_dexmon POLITOED   ; 41
	nat_dexmon ABRA       ; 42
	nat_dexmon KADABRA    ; 43
	nat_dexmon ALAKAZAM   ; 44
	nat_dexmon MACHOP     ; 45
	nat_dexmon MACHOKE    ; 46
	nat_dexmon MACHAMP    ; 47
	nat_dexmon BELLSPROUT ; 48
	nat_dexmon WEEPINBELL ; 49
	nat_dexmon VICTREEBEL ; 4a
	nat_dexmon TENTACOOL  ; 4b
	nat_dexmon TENTACRUEL ; 4c
	nat_dexmon GEODUDE    ; 4d
	nat_dexmon GRAVELER   ; 4e
	nat_dexmon GOLEM      ; 4f
	nat_dexmon PONYTA     ; 50
	nat_dexmon RAPIDASH   ; 51
	nat_dexmon SLOWPOKE   ; 52
	nat_dexmon SLOWBRO    ; 53
	nat_dexmon SLOWKING   ; 54
	nat_dexmon MAGNEMITE  ; 55
	nat_dexmon MAGNETON   ; 56
    nat_dexmon MAGNEZONE  ; 57
	nat_dexmon FARFETCH_D ; 58
	nat_dexmon DODUO      ; 59
	nat_dexmon DODRIO     ; 5a
	nat_dexmon SEEL       ; 56
	nat_dexmon DEWGONG    ; 57
	nat_dexmon GRIMER     ; 58
	nat_dexmon MUK        ; 59
	nat_dexmon SHELLDER   ; 5a
	nat_dexmon CLOYSTER   ; 5b
	nat_dexmon GASTLY     ; 5c
	nat_dexmon HAUNTER    ; 5d
	nat_dexmon GENGAR     ; 5e
	nat_dexmon ONIX       ; 5f
	nat_dexmon STEELIX    ; d0
	nat_dexmon DROWZEE    ; 60
	nat_dexmon HYPNO      ; 61
	nat_dexmon KRABBY     ; 62
	nat_dexmon KINGLER    ; 63
	nat_dexmon VOLTORB    ; 64
	nat_dexmon ELECTRODE  ; 65
	nat_dexmon EXEGGCUTE  ; 66
	nat_dexmon EXEGGUTOR  ; 67
	nat_dexmon CUBONE     ; 68
	nat_dexmon MAROWAK    ; 69
	nat_dexmon TYROGUE    ; ec
	nat_dexmon HITMONLEE  ; 6a
	nat_dexmon HITMONCHAN ; 6b
	nat_dexmon HITMONTOP  ; ed
	nat_dexmon LICKITUNG  ; 6c
    nat_dexmon LICKILICKY
	nat_dexmon KOFFING    ; 6d
	nat_dexmon WEEZING    ; 6e
	nat_dexmon RHYHORN    ; 6f
	nat_dexmon RHYDON     ; 70
    nat_dexmon RHYPERIOR
    nat_dexmon HAPPINY
	nat_dexmon CHANSEY    ; 71
	nat_dexmon BLISSEY    ; f2
	nat_dexmon TANGELA    ; 72
    nat_dexmon TANGROWTH
	nat_dexmon KANGASKHAN ; 73
	nat_dexmon HORSEA     ; 74
	nat_dexmon SEADRA     ; 75
	nat_dexmon GOLDEEN    ; 76
	nat_dexmon SEAKING    ; 77
	nat_dexmon STARYU     ; 78
	nat_dexmon STARMIE    ; 79
    nat_dexmon MIME_JR
	nat_dexmon MR__MIME   ; 7a
	nat_dexmon SCYTHER    ; 7b
	nat_dexmon SCIZOR     ; d4
	nat_dexmon SMOOCHUM   ; ee
	nat_dexmon JYNX       ; 7c
	nat_dexmon ELEKID     ; ef
	nat_dexmon ELECTABUZZ ; 7d
    nat_dexmon ELECTRIVIRE
	nat_dexmon MAGBY      ; f0
	nat_dexmon MAGMAR     ; 7e
    nat_dexmon MAGMORTAR
	nat_dexmon PINSIR     ; 7f
	nat_dexmon TAUROS     ; 80
	nat_dexmon MAGIKARP   ; 81
	nat_dexmon GYARADOS   ; 82
	nat_dexmon LAPRAS     ; 83
	nat_dexmon DITTO      ; 84
	nat_dexmon EEVEE      ; 85
	nat_dexmon VAPOREON   ; 86
	nat_dexmon JOLTEON    ; 87
	nat_dexmon FLAREON    ; 88
	nat_dexmon ESPEON     ; c4
	nat_dexmon UMBREON    ; c5
    nat_dexmon LEAFEON
    nat_dexmon GLACEON
    nat_dexmon SYLVEON
	nat_dexmon PORYGON    ; 89
	nat_dexmon PORYGON2   ; e9
    nat_dexmon PORYGONZ
	nat_dexmon OMANYTE    ; 8a
	nat_dexmon OMASTAR    ; 8b
	nat_dexmon KABUTO     ; 8c
	nat_dexmon KABUTOPS   ; 8d
	nat_dexmon AERODACTYL ; 8e
    nat_dexmon MUNCHLAX
	nat_dexmon SNORLAX    ; 8f
	nat_dexmon ARTICUNO   ; 90
	nat_dexmon ZAPDOS     ; 91
	nat_dexmon MOLTRES    ; 92
	nat_dexmon DRATINI    ; 93
	nat_dexmon DRAGONAIR  ; 94
	nat_dexmon DRAGONITE  ; 95
	nat_dexmon MEWTWO     ; 96
	nat_dexmon MEW        ; 97
NUM_KANTO_POKEMON EQU const_value +-1
    nat_dexmon_variant NIDORAN, MALE

    const_def 222
    nat_dexmon UNOWN_A_PLACEHOLDER ;read the note in Unown's proper slot below

;johto mons
    nat_dexmon_group 1, REGION_JOHTO
    nat_dexmon CHIKORITA  ; 98
	nat_dexmon BAYLEEF    ; 99
	nat_dexmon MEGANIUM   ; 9a
	nat_dexmon CYNDAQUIL  ; 9b
	nat_dexmon QUILAVA    ; 9c
	nat_dexmon TYPHLOSION ; 9d
	nat_dexmon TOTODILE   ; 9e
	nat_dexmon CROCONAW   ; 9f
	nat_dexmon FERALIGATR ; a0
	nat_dexmon SENTRET    ; a1
	nat_dexmon FURRET     ; a2
	nat_dexmon HOOTHOOT   ; a3
	nat_dexmon NOCTOWL    ; a4
	nat_dexmon LEDYBA     ; a5
	nat_dexmon LEDIAN     ; a6
	nat_dexmon SPINARAK   ; a7
	nat_dexmon ARIADOS    ; a8
	nat_dexmon CHINCHOU   ; aa
	nat_dexmon LANTURN    ; ab
	nat_dexmon TOGEPI     ; af
	nat_dexmon TOGETIC    ; b0
    nat_dexmon TOGEKISS
	nat_dexmon NATU       ; b1
	nat_dexmon XATU       ; b2
	nat_dexmon MAREEP     ; b3
	nat_dexmon FLAAFFY    ; b4
	nat_dexmon AMPHAROS   ; b5
    nat_dexmon AZURILL
	nat_dexmon MARILL     ; b7
	nat_dexmon AZUMARILL  ; b8
    nat_dexmon BONSLY
	nat_dexmon SUDOWOODO  ; b9
	nat_dexmon HOPPIP     ; bb
	nat_dexmon SKIPLOOM   ; bc
	nat_dexmon JUMPLUFF   ; bd
	nat_dexmon AIPOM      ; be
    nat_dexmon AMBIPOM
	nat_dexmon SUNKERN    ; bf
	nat_dexmon SUNFLORA   ; c0
	nat_dexmon YANMA      ; c1
    nat_dexmon YANMEGA
	nat_dexmon WOOPER     ; c2
	nat_dexmon QUAGSIRE   ; c3
	nat_dexmon MURKROW    ; c6
    nat_dexmon HONCHCROW
	nat_dexmon MISDREAVUS ; c8
    nat_dexmon MISMAGIUS
	;nat_dexmon UNOWN Would go here but it has an obsecne amount of forms, 
    ;so we put it after all the others to not take any risks, 
    ;and since we can arbitrarily place pokemon in the dex order, we can put it here there
    nat_dexmon WYNAUT
	nat_dexmon WOBBUFFET  ; ca
	nat_dexmon GIRAFARIG  ; cb
	nat_dexmon PINECO     ; cc
	nat_dexmon FORRETRESS ; cd
	nat_dexmon DUNSPARCE  ; ce
	nat_dexmon GLIGAR     ; cf
    nat_dexmon GLISCOR
	nat_dexmon SNUBBULL   ; d1
	nat_dexmon GRANBULL   ; d2
	nat_dexmon QWILFISH   ; d3
	nat_dexmon SHUCKLE    ; d5
	nat_dexmon HERACROSS  ; d6
	nat_dexmon SNEASEL    ; d7
    nat_dexmon WEAVILE
	nat_dexmon TEDDIURSA  ; d8
	nat_dexmon URSARING   ; d9
	nat_dexmon SLUGMA     ; da
	nat_dexmon MAGCARGO   ; db
	nat_dexmon SWINUB     ; dc
	nat_dexmon PILOSWINE  ; dd
    nat_dexmon MAMOSWINE
	nat_dexmon CORSOLA    ; de
	nat_dexmon REMORAID   ; df
	nat_dexmon OCTILLERY  ; e0
	nat_dexmon DELIBIRD   ; e1
    nat_dexmon MANTYKE
	nat_dexmon MANTINE    ; e2
	nat_dexmon SKARMORY   ; e3
	nat_dexmon HOUNDOUR   ; e4
	nat_dexmon HOUNDOOM   ; e5
	nat_dexmon KINGDRA    ; e6
	nat_dexmon PHANPY     ; e7
	nat_dexmon DONPHAN    ; e8
	nat_dexmon STANTLER   ; ea
	nat_dexmon SMEARGLE   ; eb
	nat_dexmon MILTANK    ; f1
	nat_dexmon RAIKOU     ; f3
	nat_dexmon ENTEI      ; f4
	nat_dexmon SUICUNE    ; f5
	nat_dexmon LARVITAR   ; f6
	nat_dexmon PUPITAR    ; f7
	nat_dexmon TYRANITAR  ; f8
	nat_dexmon LUGIA      ; f9
	nat_dexmon HO_OH      ; fa
	nat_dexmon CELEBI     ; fb
NUM_JOHTO_POKEMON EQU const_value +-1

    const_def 222
    nat_dexmon UNOWN

;generation 3 hoenn
    nat_dexmon_group 1, REGION_HOENN
    nat_dexmon TREECKO
    nat_dexmon GROVYLE
    nat_dexmon SCEPTILE
    nat_dexmon TORCHIC
    nat_dexmon COMBUSKEN
    nat_dexmon BLAZIKEN
    nat_dexmon MUDKIP
    nat_dexmon MARSHTOMP
    nat_dexmon SWAMPERT
    nat_dexmon POOCHYENA
    nat_dexmon MIGHTYENA
    nat_dexmon ZIZAGOON
    nat_dexmon LINOONE
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
    nat_dexmon TAILOW
    nat_dexmon SWELLOW
    nat_dexmon WINGULL
    nat_dexmon PELIPPER
    nat_dexmon RALTS
    nat_dexmon KIRLIA
    nat_dexmon GARDEVOIR
    nat_dexmon GALLADE
    nat_dexmon SURSKIT
    nat_dexmon MASQUERAIN
    nat_dexmon SHROOMISH
    nat_dexmon BRELOOM
    nat_dexmon SLACKOTH
    nat_dexmon VIGOROTH
    nat_dexmon SLACKING
    nat_dexmon NINCADA
    nat_dexmon NINJASK
    nat_dexmon SHEDINJA 
    nat_dexmon WHISMUR
    nat_dexmon LOUDRED
    nat_dexmon EXPLOUD
    nat_dexmon MAKUHITA
    nat_dexmon HARIYAMA
    nat_dexmon NOSEPASS
    nat_dexmon PROBOPASS
    nat_dexmon SKITTY
    nat_dexmon DELCATTY
    nat_dexmon SABLEYE
    nat_dexmon MAWILE
    nat_dexmon ARON 
    nat_dexmon LAIRON
    nat_dexmon AGGRON
    nat_dexmon MEDITITE
    nat_dexmon MEDICHAM
    nat_dexmon ELECTRIKE
    nat_dexmon MENECTRIC
    nat_dexmon PLUSLE
    nat_dexmon MINUN
    nat_dexmon VOLBEAT
    nat_dexmon ILLUMISE
    nat_dexmon BUDEW
    nat_dexmon ROSELIA
    nat_dexmon ROSERADE
    nat_dexmon GULPIN
    nat_dexmon SWALOT
    nat_dexmon CARVANHA
    nat_dexmon SHARPEDO
    nat_dexmon WAILMER
    nat_dexmon WAILORD
    nat_dexmon NUMEL
    nat_dexmon CAMERUPT
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
    nat_dexmon KECLEON
    nat_dexmon SHUPPET
    nat_dexmon BANETTE
    nat_dexmon DUSKULL
    nat_dexmon DUSCLOPS
    nat_dexmon DUSKNOIR
    nat_dexmon TROPIUS
    nat_dexmon CHINGLING
    nat_dexmon CHIMECHO
    nat_dexmon ABSOL
    nat_dexmon SNORUNT
    nat_dexmon GlALIE
    nat_dexmon FROSSLASS
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
    nat_dexmon BELDUM
    nat_dexmon METANG
    nat_dexmon METAGROSS
    nat_dexmon REGIROCK
    nat_dexmon REGICE
    nat_dexmon REGISTEEL
    nat_dexmon LATIAS
    nat_dexmon LATIOS
    nat_dexmon KYOGRE 
    nat_dexmon GROUDON
    nat_dexmon RAYQUAZA
    nat_dexmon JIRACHI
    nat_dexmon DEOXYS
NUM_HOENN_POKEMON EQU const_value +-1

    const_def 222
    nat_dexmon UNOWN_C_PLACEHOLDER


; gen 4 sinnoh mons
    nat_dexmon_group 1, REGION_SINNOH
    nat_dexmon TURTWIG
    nat_dexmon GROTLE
    nat_dexmon TORTERRA
    nat_dexmon CHIMCHAR
    nat_dexmon MONFERNO
    nat_dexmon INFERNAPE
    nat_dexmon PIPLUP
    nat_dexmon PRINPLUP
    nat_dexmon EMPLOEON
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
    nat_dexmon CRAINIDOS
    nat_dexmon RAMPARDOS
    nat_dexmon SHEILDON
    nat_dexmon BASTIODON
    nat_dexmon BURMY
    nat_dexmon WORMADAM
    nat_dexmon MOTHIM
    nat_dexmon COMBEE
    nat_dexmon VESPIQUEN
    nat_dexmon PACHIRISU 
    nat_dexmon BUIZEL
    nat_dexmon FLOATZEL
    nat_dexmon CHERUBI
    nat_dexmon CHERRIM
    nat_dexmon SHELLOS
    nat_dexmon GASTRODON
    nat_dexmon DRIFLOON
    nat_dexmon DRIFBLIM
    nat_dexmon BUNEARY
    nat_dexmon LOPUNNY
    nat_dexmon GLAMEOW
    nat_dexmon PURUGLY
    nat_dexmon STUNKY
    nat_dexmon SKUNKTANK
    nat_dexmon BRONZOR
    nat_dexmon BRONZONG
    nat_dexmon CHATOT
    nat_dexmon SPIRITOMB
    nat_dexmon GIBLE
    nat_dexmon GABITE
    nat_dexmon GARCHOMP
    nat_dexmon RIOLU
    nat_dexmon LUCARIO
    nat_dexmon HIPPOPOTAS
    nat_dexmon HIPPOWDON
    nat_dexmon SKORUPI
    nat_dexmon DRAPION
    nat_dexmon CROAGUNK
    nat_dexmon TOXICROAK
    nat_dexmon CARNIVINE
    nat_dexmon FINNEON
    nat_dexmon LUMINEON
    nat_dexmon SNOVER
    nat_dexmon ABOMASNOW
    nat_dexmon ROTOM
    nat_dexmon UXIE
    nat_dexmon MESPRIT
    nat_dexmon AZELF
    nat_dexmon DIALGA
    nat_dexmon PALKIA
    nat_dexmon HEATRAN
    nat_dexmon REGIGIGAS
    nat_dexmon GIRATINA
    nat_dexmon CRESSELIA
    nat_dexmon PHIONE
    nat_dexmon MANAPHY
    nat_dexmon DARKRAI
    nat_dexmon SHAYMIN
    nat_dexmon ARCEUS
NUM_SINNOH_POKEMON EQU const_value +-1
    nat_dexmon_variant SHAYMIN, LAND

    const_def 222
    nat_dexmon UNOWN_D_PLACEHOLDER

; gen 5 unova mons
    nat_dexmon_group 1, REGION_UNOVA
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
    nat_dexmon PANMPOUR
    nat_dexmon SIMIPOUR
    nat_dexmon MUNNA
    nat_dexmon MUSHARNA 
    nat_dexmon PIDOVE
    nat_dexmon TRANQUIL
    nat_dexmon UNFEZANT
    nat_dexmon BLITZLE
    nat_dexmon ZEBSTRIKA
    nat_dexmon ROGGENROLA
    nat_dexmon BOLDORE
    nat_dexmon GIGALITH
    nat_dexmon WOOBAT
    nat_dexmon SWOOBAT
    nat_dexmon DRILBUR
    nat_dexmon EXCADRIL
    nat_dexmon AUDINO
    nat_dexmon TIMBURR
    nat_dexmon GIRDURR
    nat_dexmon CONKELDURR
    nat_dexmon TYMPOLE
    nat_dexmon PALPITOAD
    nat_dexmon SEISMITOAD
    nat_dexmon THROH 
    nat_dexmon SAWK 
    nat_dexmon SWEADDLE
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
    nat_dexmon DARMANITAN
    nat_dexmon MARACTUS
    nat_dexmon DWEBBLE
    nat_dexmon CRUSTLE
    nat_dexmon SCRAGGY
    nat_dexmon SCRAFTY 
    nat_dexmon SIGILYPH
    nat_dexmon YAMASK
    nat_dexmon COFAGRIGUS
    nat_dexmon TIRTOUGA 
    nat_dexmon CARACOSTA
    nat_dexmon ARCHEN
    nat_dexmon ARCHEOPS
    nat_dexmon TRUBBISH
    nat_dexmon GRABODOR
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
    nat_dexmon VANILITE
    nat_dexmon VANILUXE 
    nat_dexmon DEERLING
    nat_dexmon SAWSBUCK
    nat_dexmon EMOLGA
    nat_dexmon KARRABLAST
    nat_dexmon ESCAVALIER
    nat_dexmon FOONGUS
    nat_dexmon AMOONGUSS
    nat_dexmon FRILLISH
    nat_dexmon JELLICENT 
    nat_dexmon ALOMOMOLA
    nat_dexmon JOLTICK
    nat_dexmon GALVANTULA
    nat_dexmon FERROSEED
    nat_dexmon FERROTHORN
    nat_dexmon KLINK
    nat_dexmon KLANG
    nat_dexmon KLINGKLANG
    nat_dexmon TYNAMO
    nat_dexmon EELECTRIK
    nat_dexmon EELECKTROSS
    nat_dexmon ELGYEM
    nat_dexmon BEHEEYEM
    nat_dexmon LITWICK
    nat_dexmon LAMPENT
    nat_dexmon CHANDELURE
    nat_dexmon AXEW
    nat_dexmon FRAXURE
    nat_dexmon HAORUS
    nat_dexmon CUBCHOO
    nat_dexmon BEARTIC
    nat_dexmon CRYOGONAL
    nat_dexmon SHELMET
    nat_dexmon ACCELGOR
    nat_dexmon STUNFISK
    nat_dexmon MIENFOO
    nat_dexmon MIENSHAO
    nat_dexmon DRUDDIGON
    nat_dexmon GOLETT
    nat_dexmon GOLURK
    nat_dexmon PAWNIARD
    nat_dexmon BISHARP
    nat_dexmon BOUFALLANT
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
    nat_dexmon TERRACKION
    nat_dexmon VIRIZION
    nat_dexmon TORNADUS
    nat_dexmon THUNDURUS
    nat_dexmon RESHIRAM
    nat_dexmon ZEKROM
    nat_dexmon LANDORUS
    nat_dexmon KYRUEM
    nat_dexmon KELDEO
    nat_dexmon MELLOETTA
    nat_dexmon GENESECT
NUM_UNOVA_POKEMON EQU const_value +-1

    const_def 222
    nat_dexmon UNOWN_E_PLACEHOLDER

;Ggen 6 pokemon
    nat_dexmon_group 1, REGION_KALOS
    nat_dexmon CHESPIN
    nat_dexmon QUILLADIN
    nat_dexmon CHESNAUGHT
    nat_dexmon FENNEKIN
    nat_dexmon BRAIXEN
    nat_dexmon DELPHOX
    nat_dexmon FROAKIE
    nat_dexmon FROGADIER
    nat_dexmon GRENINJA
    nat_dexmon BUNNELBY
    nat_dexmon DIGGERSBY
    nat_dexmon FLETCHLING
    nat_dexmon FLETCHINDER
    nat_dexmon TALONFLAME
    nat_dexmon SCATTERBUG
    nat_dexmon SPEWPA
    nat_dexmon VIVVILON
    nat_dexmon LITLEO
    nat_dexmon PYROAR
    nat_dexmon FLABEBE
    nat_dexmon FLOETTE
    nat_dexmon FLORGES
    nat_dexmon SKIDDO
    nat_dexmon GOGOAT
    nat_dexmon PANCHAM
    nat_dexmon PANGORO
    nat_dexmon FURFROU
    nat_dexmon ESPURR
    nat_dexmon MEOWSTIC
    nat_dexmon HONEDGE
    nat_dexmon DOUBLADE
    nat_dexmon AEGISLASH
    nat_dexmon SPRITZEE
    nat_dexmon AROMATISSE
    nat_dexmon SWIRLIX
    nat_dexmon SLURPUFF
    nat_dexmon INKAY
    nat_dexmon MALAMAR
    nat_dexmon BINACLE
    nat_dexmon BARBRACLE
    nat_dexmon SKRELP
    nat_dexmon DRAGALGE
    nat_dexmon CLAUNCHER
    nat_dexmon CLAWLITZER
    nat_dexmon HELIOPTILE
    nat_dexmon HELIOLISK
    nat_dexmon TYRUNT
    nat_dexmon TYRANTRUM
    nat_dexmon AMAURA
    nat_dexmon AURORUS
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
    nat_dexmon GOURGEIST
    nat_dexmon BERGMITE
    nat_dexmon AVALUGG
    nat_dexmon NOIBAT
    nat_dexmon NOIVERN
    nat_dexmon XERNEAS
    nat_dexmon YVELTAL
    nat_dexmon ZYGARDE
    nat_dexmon DIANCIE
    nat_dexmon HOOPA 
    nat_dexmon VOLCANION
NUM_KALOS_POKEMON EQU const_value +-1
    nat_dexmon_variant MEOWSTIC, MALE
    nat_dexmon_variant AEGISLASH, SHIELD

    const_def 222
    nat_dexmon UNOWN_F_PLACEHOLDER

;Gen 7 mons
    nat_dexmon_group 1, REGION_ALOLA
    nat_dexmon ROWLET
    nat_dexmon DARTRIX
    nat_dexmon DECIDUEYE
    nat_dexmon LITTEN
    nat_dexmon TORRACAT
    nat_dexmon INCINEROAR
    nat_dexmon POPPLIO
    nat_dexmon BRIONE
    nat_dexmon PRIMARINA
    nat_dexmon PIKIPECK
    nat_dexmon TRUMBEAK
    nat_dexmon TOUCANNON
    nat_dexmon YUNGOOS
    nat_dexmon GUMSHOOS
    nat_dexmon GRUBBIN
    nat_dexmon CHARJABUG
    nat_dexmon VIKAVOLT
    nat_dexmon CRABRAWLER
    nat_dexmon CRABOMINABLE
    nat_dexmon ORICORIO
    nat_dexmon CUTIEFLY
    nat_dexmon RIBOMBEE
    nat_dexmon ROCKRUFF
    nat_dexmon LYCANROC
    nat_dexmon WISHIWASHI
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
    nat_dexmon SILVALLY
    nat_dexmon MINIOR
    nat_dexmon KOMALA
    nat_dexmon TURTONATOR
    nat_dexmon TOGEDEMARU
    nat_dexmon MIMIKYU
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
    nat_dexmon SOLGALEO
    nat_dexmon LUNALA
    nat_dexmon NIHILEGO
    nat_dexmon BUZZSWOLE
    nat_dexmon PHEROMOSA
    nat_dexmon XURKITREE
    nat_dexmon CELESTEELA
    nat_dexmon KARTANA
    nat_dexmon GUZZLORD
    nat_dexmon NECROZMA
    nat_dexmon MAGEARNA
    nat_dexmon MARSHADOW
    nat_dexmon POIPOLE
    nat_dexmon NAGANADEL
    nat_dexmon STAKATAKA
    nat_dexmon BLACEPHALON
    nat_dexmon ZERAORA
    nat_dexmon MELTAN
    nat_dexmon MELMETAL
NUM_ALOLA_POKEMON EQU const_value +-1

    const_def 222
    nat_dexmon UNOWN_G_PLACEHOLDER
  

    nat_dexmon_group 1, REGION_GALAR
NUM_GALAR_POKEMON EQU const_value +-1

    const_def 222
    nat_dexmon UNOWN_H_PLACEHOLDER

;I hereby dub thee snowshrew, to save thee from a name that makes absolutely no sense

SNOWSHREW EQU SANDSHREW
SNOWSLASH EQU SANDSLASH

; other stuff
NIDORINA EQU NIDORINO
NIDOQUEEN EQU NIDOKING

;first variant form
    nat_dexmon_group 1, ALTERNATE_FORM
    nat_dexmon_variant NIDORAN, FEMALE
    nat_dexmon_variant NIDORINO, FEMALE
    nat_dexmon_variant NIDOKING, FEMALE

    nat_dexmon_variant SANDSHREW, ALOLA
    nat_dexmon_variant SANDSLASH, ALOLA
    nat_dexmon_variant VULPIX, ALOLA
    nat_dexmon_variant NINETALES, ALOLA
    nat_dexmon_variant MEOWTH, ALOLA
    nat_dexmon_variant PERSIAN, ALOLA
    nat_dexmon_variant GRIMER, ALOLA
    nat_dexmon_variant MUK, ALOLA

    nat_dexmon_variant MEOWSTIC, FEMALE
    nat_dexmon_variant GIRAFARIG, BETA

    nat_dexmon_variant RAIKOU, BETA
    nat_dexmon_variant ENTEI, BETA
    nat_dexmon_variant SUICUNE, BETA

    nat_dexmon_variant AEGISLASH, BLADE

    nat_dexmon_variant SHAYMIN, SKY
; second varaint form
    nat_dexmon_group 1, ALTERNATE_FORM+1
    
; hoo boy Unown you've got a lot of forms
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
	const UNOWN_EXCLAMATION_MARK
	const UNOWN_QUESTION_MARK
NUM_UNOWN EQU const_value + -1 ; 26

