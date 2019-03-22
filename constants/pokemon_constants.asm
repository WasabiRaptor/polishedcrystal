; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - Footprints (see gfx/footprints.asm)
	const_def 1
	const EEVEE			; 01
	const VAPOREON		; 02
	const JOLTEON		; 03
	const FLAREON		; 04
	const ESPEON		; 05
	const UMBREON		; 06
	const LEAFEON		; 07
	const GLACEON		; 08
	const SYLVEON		; 09
	const ZORUA			; 0a
	const ZOROARK		; 0b
	const ROCKRUFF		; 0c
	const LYCANROC		; 0d alt forms alt palettes
	const MIMIKYU     	; 0e
	const MAGNEMITE   	; 0f
	const MAGNETON     	; 10
	const MAGNEZONE  	; 11
	const PORYGON    	; 12
	const PORYGON2    	; 13
	const PORYGONZ   	; 14
	const MEOWTH    	; 15 alt forms alt palettes
	const PERSIAN     	; 16 alt forms alt palettes
	const TOGEPI      	; 17
	const TOGETIC      	; 18
	const TOGEKISS    	; 19
	const ROTOM     	; 1a alt forms alt palettes
	const CHINGLING  	; 1b
	const CHIMECHO  	; 1c
	const ESPURR  		; 1d
	const MEOWSTIC   	; 1e alt forms alt palettes
	const TIMBURR  		; 1f
	const GURDURR  		; 20
	const CONKELDURR   	; 21
	const DITTO   		; 22
	const PURRLOIN   	; 23
	const LIEPARD   	; 24
	const GRIMER     	; 25
	const MUK  			; 26
	const NIDORAN 	; 27 alt forms alt palettes
	const NIDORINO 		; 28
	const NIDORINA      ; 29
	const NIDOKING     	; 2a
	const NIDOQUEEN     ; 2b
	const SEVIPER      	; 2c
	const ZANGOOSE  	; 2d
	const SENTRET      	; 2e
	const FURRET   		; 2f
	const SWABLU    	; 30
	const ALTARIA   	; 31
	const MIENFOO    	; 32
	const MIENSHAO    	; 33
	const HAWLUCHA     	; 34
	const MAREEP    	; 35
	const FLAAFFY    	; 36
	const AMPHAROS    	; 37
	const SHINX     	; 38
	const LUXIO   		; 39
	const LUXRAY  		; 3a
	const SANDSHREW   	; 3b alt forms alt palettes
	const SANDSLASH    	; 3c alt forms alt palettes
	const CUTIEFLY  	; 3d
	const RIBOMBEE  	; 3e
	const FLABEBE       ; 3f alt palettes
	const FLOETTE    	; 40 alt palettes
	const FLORGES   	; 41 alt palettes
	const IGGLYBUFF     ; 42
	const JIGGLYPUFF    ; 43
	const WIGGLYTUFF    ; 44
	const CHESPIN 		; 45
	const QUILLADIN 	; 46
	const CHESNAUGHT 	; 47
	const DEERLING  	; 48 alt palettes
	const SAWSBUCK 		; 49 alt forms alt palettes
	const COTTONEE    	; 4a
	const WHIMSICOTT   	; 4b
	const FOONGUS      	; 4c
	const AMOONGUSS     	; 4d
	const PHANTUMP   	; 4e
	const TREVENANT   	; 4f
	const BONSLY    	; 50
	const SUDOWOODO  	; 51
	const PASSIMIAN   	; 52
	const STUFFUL 		; 53
	const BEWEAR      	; 54
	const GIRAFARIG     ; 55 alt forms
	const HERACROSS     ; 56
	const LEDYBA    	; 57
	const LEDIAN     	; 58
	const JOLTIK        ; 59
	const GALVANTULA   	; 5a
	const PINECO   		; 5b
	const FORRETRESS    ; 5c
	const YANMA    		; 5d
	const YANMEGA     	; 5e
	const SCYTHER       ; 5f
	const SCIZOR    	; 60
	const VENIPEDE      ; 61
	const WHIRLIPEDE    ; 62
	const SCOLIPEDE     ; 63
	const MORELULL      ; 64
	const SHIINOTIC     ; 65
	const SHROOMISH     ; 66
	const BRELOOM       ; 67
	const CROAGUNK      ; 68
	const TOXICROAK     ; 69
	const SANDILE       ; 6a
	const KROKOROK      ; 6b
	const KROOKODILE    ; 6c
	const TYMPOLE       ; 6d
	const PALPITOAD     ; 6e
	const SEISMITOAD    ; 6f
	const DRAMPA        ; 70
	const GOOMY         ; 71
	const SLIGGOO       ; 72
	const GOODRA        ; 73
	const MISDREAVUS    ; 74
	const MISMAGIUS     ; 75
	const GASTLY        ; 76
	const HAUNTER       ; 77
	const GENGAR        ; 78
	const OSHAWOTT      ; 79
	const DEWOTT        ; 7a
	const SAMUROTT      ; 7b
	const BUIZEL        ; 7c
	const FLOATZEL      ; 7d
	const AZURILL        ; 7e
	const MARILL        ; 7f
	const AZUMARILL     ; 80
	const LAPRAS   		; 81
	const ANORITH   	; 82
	const ARMALDO     	; 83
	const DEWPIDER      ; 84
	const ARAQUANID     ; 85
	const MAGIKARP      ; 86
	const GYARADOS      ; 87
	const FEEBAS        ; 88
	const MILOTIC       ; 89
	const FINNEON       ; 8a
	const LUMINEON      ; 8b
	const QWILFISH      ; 8c
	const CHINCHOU      ; 8d
	const LANTURN       ; 8e
	const STUNFISK      ; 8f
	const DWEBBLE   	; 90
	const CRUSTLE     	; 91
	const TYROGUE    	; 92
	const HITMONCHAN    ; 93
	const HITMONLEE     ; 94
	const HITMONTOP     ; 95
	const RIOLU     	; 96
	const LUCARIO       ; 97
	const MEDITITE      ; 98
	const MEDICHAM      ; 99
	const SNOVER        ; 9a
	const ABOMASNOW  	; 9b
	const FERROSEED    	; 9c
	const FERROTHORN 	; 9d
	const SHUCKLE       ; 9e
	const NOSEPASS      ; 9f
	const PROBOPASS     ; a0
	const LARVITAR    	; a1
	const PUPITAR     	; a2
	const TYRANITAR   	; a3
	const NOIBAT        ; a4
	const NOIVERN     	; a5
	const DRUDDIGON     ; a6
	const AXEW          ; a7
	const FRAXURE       ; a8
	const HAXORUS       ; a9
	const JANGMO_O      ; aa
	const HAKAMO_O      ; ab
	const KOMMO_O       ; ac
	const DEINO         ; ad
	const ZWEILOUS  	; ae
	const HYDREIGON    ; af
	const CYNDAQUIL    	; b0	
	const QUILAVA       ; b1
	const TYPHLOSION    ; b2
	const LITTEN     	; b3
	const TORRACAT    	; b4
	const INCINEROAR   	; b5
	const FENNEKIN  	; b6
	const BRAIXEN     	; b7
	const DELPHOX  		; b8
	const VULPIX  		; b9 alt forms alt palettes
	const NINETALES   	; ba alt forms alt palettes
	const SLUGMA        ; bb
	const MAGCARGO      ; bc
	const HOUNDOUR      ; bd
	const HOUNDOOM      ; be
	const FLETCHLING    ; bf
	const FLETCHINDER   ; c0
	const TALONFLAME    ; c1
	const HEATMOR       ; c2
	const DURANT        ; c3
	const ARCHEN        ; c4
	const ARCHEOPS      ; c5
	const ROGGENROLA    ; c6
	const BOLDORE       ; c7
	const GIGALITH      ; c8
	const CARBINK      	; c9
	const AMAURA        ; ca
	const AURORUS       ; cb
	const SNEASEL       ; cc
	const WEAVILE       ; cd
	const CRYOGONAL     ; ce
	const SNORUNT      ; cf
	const GLALIE        ; d0
	const FROSSLASS     ; d1
	const SWINUB        ; d2
	const PILOSWINE     ; d3
	const MAMOSWINE     ; d4
	const UNOWN    		; d5 alt forms
	const NATU          ; d6
	const XATU          ; d7
	const SIGILYPH      ; d8
	const DRILBUR      ; d9
	const EXCADRILL     ; da
	const BALTOY        ; db
	const CLAYDOL       ; dc
	const GOLETT        ; dd
	const GOLURK        ; de
	const BRONZOR       ; df
	const BRONZONG      ; e0
	const HONEDGE       ; e1
	const DOUBLADE      ; e2
	const AEGISLASH     ; e3 alt forms
	const PAWNIARD      ; e4
	const BISHARP       ; e5
	const YAMASK        ; e6
	const COFAGRIGUS    ; e7
	const LITWICK       ; e8
	const LAMPENT       ; e9
	const CHANDELURE    ; ea
	const SPIRITOMB     ; eb
	const DUSKULL    	; ec
	const DUSCLOPS  	; ed
	const DUSKNOIR   	; ee
	const ARTICUNO   	; ef
	const ZAPDOS     	; f0
	const MOLTRES    	; f1
	const SUICUNE    	; f2 alt forms
	const RAIKOU     	; f3 alt forms
	const ENTEI      	; f4 alt forms
	const LATIAS     	; f5
	const LATIOS     	; f6
	const SILVALLY   	; f7
	const MAGEARNA   	; f8
	const SHAYMIN    	; f9 alt forms
	const CELEBI     	; fa
	const ZYGARDE    	; fb alt forms
	const MEW        	; fc
	const MEWTWO     	; fd
NUM_POKEMON EQU const_value + -1
	const EGG        ; fe
	const CANCEL     ; $ff

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
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

	const_def 1
	const KANTONIAN
	const ALOLAN
NUM_REGIONAL EQU const_value + -1 ; 2

	const_def 1
	const LYCANROC_MIDDAY
	const LYCANROC_DUSK
	const LYCANROC_MIDNIGHT
	const LYCANROC_DAWN
NUM_LYCANROC EQU const_value + -1 ; 4

	const_def 1
	const DEFAULT_FORM
	const BETA_FORM
NUM_BETA EQU const_value + -1 ; 2

	const_def 2
	const FAN_ROTOM
	const FROST_ROTOM
	const HEAT_ROTOM
	const MOW_ROTOM
	const WASH_ROTOM
NUM_ROTOM EQU const_value + -1 ; 6

	const_def 1
	const TEN_PERCENT
	const FIFTY_PERCENT
	const COMPLETE
NUM_ZYGARDE EQU const_value + -1 ; 3

	const_def 1
	const LAND_SHAYMIN
	const SKY_SHAYMIN
NUM_SHAYMIN EQU const_value + -1 ; 2

	const_def 1
	const SPRING
	const SUMMER
	const FALL
	const WINTER
NUM_SAWSBUCK EQU const_value + -1 ;4

	const_def 1
	const TYPE_FULL
	const TYPE_NULL
NUM_SILVALLY EQU const_value + -1 ;2

	const_def 1
	const SHIELD_AEGISLASH
	const BLADE_AEGISLASH
NUM_AEGISLASH EQU const_value + -1 ; 2

; magikarp
	const_def 1
	const MAGIKARP_PLAIN_FORM
	const MAGIKARP_SKELLY_FORM
	const MAGIKARP_CALICO1_FORM
	const MAGIKARP_CALICO2_FORM
	const MAGIKARP_CALICO3_FORM
	const MAGIKARP_TWO_TONE_FORM
	const MAGIKARP_ORCA_FORM
	const MAGIKARP_DAPPLES_FORM
	const MAGIKARP_TIGER_FORM
	const MAGIKARP_ZEBRA_FORM
	const MAGIKARP_STRIPE_FORM
	const MAGIKARP_BUBBLES_FORM
	const MAGIKARP_FOREHEAD_FORM
	const MAGIKARP_MASK_FORM
NUM_MAGIKARP EQU const_value +- 1

; gyarados
	const_def 1
	const GYARADOS_PLAIN_FORM
GYARADOS_RED_FORM EQU NUM_MAGIKARP + 1

	const_def 1
	const MEWTWO_PLAIN_FORM
	const MEWTWO_ARMORED_FORM
NUM_MEWTWO EQU const_value + -1 ; 2
