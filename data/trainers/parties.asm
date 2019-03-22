; All trainers follow a basic structure:
	; Name
		; String in format "TEXT@"
	; Type
		; TRAINERTYPE_NORMAL:      level, species (2 bytes)
		; TRAINERTYPE_ITEM:        item (1 byte)
		; TRAINERTYPE_EVS:         EVs (1 byte, marks the setting of all EVs)
		; TRAINERTYPE_DVS:         DVs (3 bytes)
		; TRAINERTYPE_PERSONALITY: personality (2 bytes)
		; TRAINERTYPE_NICKNAME:    nickname (max 10 bytes)
		; TRAINERTYPE_MOVES:       moves (4 bytes)
	; Party
		; Up to six monsters following the data type
	; $ff

; Do not use the byte $ff in trainer data, since it's the end marker.
; That means:
; * DVs cannot be $ff -- use $00 instead (ReadTrainerParty converts it to $ff)
; * "9" cannot be used in nicknames

; TODO: boss trainers need better movesets, held items, natures, and abilities
; TODO: swap ABILITY_1 and ABILITY_2 in base data as need so that ABILITY_1 is the better one for default NPCs (e.g. NPCs should have Sturdy when possible)


SECTION "Enemy Trainer Parties 1", ROMX


CarrieGroup:
; ================================
; ================

	; CARRIE
	db "Carrie@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


CalGroup:
; ================================
; ================

	; CAL
	db "Cal@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


FalknerGroup:
; ================================
; ================

	; FALKNER
	db "Falkner@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


BugsyGroup:
; ================================
; ================

	; BUGSY
	db "Bugsy@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


WhitneyGroup:
; ================================
; ================

	; WHITNEY
	db "Whitney@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES

	db -1 ; end

; ================
; ================================


MortyGroup:
; ================================
; ================

	; MORTY
	db "Morty@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


ChuckGroup:
; ================================
; ================

	; CHUCK
	db "Chuck@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


JasmineGroup:
; ================================
; ================

	; JASMINE
	db "Jasmine@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


PryceGroup:
; ================================
; ================

	; PRYCE
	db "Pryce@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


ClairGroup:
; ================================
; ================

	; CLAIR
	db "Clair@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


WillGroup:
; ================================
; ================

	; WILL
	db "Will@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


KogaGroup:
; ================================
; ================

	; KOGA
	db "Koga@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


BrunoGroup:
; ================================
; ================

	; BRUNO
	db "Bruno@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS |  TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


KarenGroup:
; ================================
; ================

	; KAREN
	db "Karen@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


ChampionGroup:
; ================================
; ================

	; CHAMPION
	db "Lance@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


BrockGroup:
; ================================
; ================

	; BROCK
	db "Brock@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


MistyGroup:
; ================================
; ================

	; MISTY
	db "Misty@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


LtSurgeGroup:
; ================================
; ================

	; LT_SURGE
	db "Lt.Surge@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


ErikaGroup:
; ================================
; ================

	; ERIKA
	db "Erika@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


JanineGroup:
; ================================
; ================

	; JANINE
	db "Janine@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


SabrinaGroup:
; ================================
; ================

	; SABRINA
	db "Sabrina@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


BlaineGroup:
; ================================
; ================

	; BLAINE
	db "Blaine@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


BlueGroup:
; ================================
; ================

	; BLUE
	db "Blue@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


RedGroup:
; ================================
; ================

	; RED
	db "Red@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


LeafGroup:
; ================================
; ================

	; LEAF
	db "Green@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


Rival0Group:
; ================================
; ================

	; RIVAL0
	db "boy@"
	db TRAINERTYPE_ITEM
	; party
	db -1 ; end

; ================
; ================================


Rival1Group:
; ================================
; ================

	; RIVAL1
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS
	; party
	db -1 ; end

; ================
; ================================


Rival2Group:
; ================================
; ================

	; RIVAL2
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


; TODO: give Lyra custom movesets
Lyra1Group:
; ================================
; ================

	; LYRA1
	db "Lyra@"
	db TRAINERTYPE_NICKNAME
	; party
	db -1 ; end

; ================
; ================================


Lyra2Group:
; ================================
; ================

	; LYRA2
	db "Lyra@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_NICKNAME
	; party
	db -1 ; end

; ================
; ================================


YoungsterGroup:
; ================================
; ================

	; YOUNGSTER
	db "Joey@"
	db TRAINERTYPE_DVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_NICKNAME
	; party
	db 5, SENTRET, FAKE_PERFECT_DVS, ABILITY_2 | ADAMANT, MALE, "Test@"
	db -1 ; end

; ================
; ================================


BugCatcherGroup:
; ================================
; ================

	; BUG_CATCHER
	db "Wade@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


CamperGroup:
; ================================
; ================

	; CAMPER
	db "Todd@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


PicnickerGroup:
; ================================
; ================

	; PICNICKER
	db "Liz@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


TwinsGroup:
; ================================
; ================

	; TWINS
	db "Amy & Mimi@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


FisherGroup:
; ================================
; ================

	; FISHER
	db "Ralph@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


BirdKeeperGroup:
; ================================
; ================

	; BIRD_KEEPER
	db "Vance@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


HikerGroup:
; ================================
; ================

	; HIKER
	db "Anthony@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


GruntMGroup:
; ================================
; ================

	; unused
	; GRUNTM
	db "Grunt@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


GruntFGroup:
; ================================
; ================

	; GRUNTF
	db "Grunt@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


PokefanMGroup:
; ================================
; ================

	; POKEFANM
	db "Derek@"
	db TRAINERTYPE_ITEM
	; party
	db -1 ; end

; ================
; ================================


PokefanFGroup:
; ================================
; ================

	; POKEFANF
	db "Beverly@"
	db TRAINERTYPE_ITEM
	; party
	db -1 ; end

; ================
; ================================


OfficerMGroup:
; ================================
; ================

	; OFFICERM
	db "Keith@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


OfficerFGroup:
; ================================
; ================

	; OFFICERF
	db "Jamie@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


NurseGroup:
; ================================
; ================

	; NURSE
	db "Joy@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


PokemaniacGroup:
; ================================
; ================

	; POKEMANIAC
	db "Brent@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


CosplayerGroup:
; ================================
; ================

	; COSPLAYER
	db "Clara@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


SuperNerdGroup:
; ================================
; ================

	; SUPER_NERD
	db "Stan@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


LassGroup:
; ================================
; ================

	; LASS
	db "Dana@"
	db TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


BeautyGroup:
; ================================
; ================

	; BEAUTY
	db "Victoria@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


BugManiacGroup:
; ================================
; ================

	; BUG_MANIAC
	db "Lou@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


RuinManiacGroup:
; ================================
; ================

	; RUIN_MANIAC
	db "Jones@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


FirebreatherGroup:
; ================================
; ================

	; FIREBREATHER
	db "Otis@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


JugglerGroup:
; ================================
; ================

	; JUGGLER
	db "Irwin@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


SchoolboyGroup:
; ================================
; ================

	; SCHOOLBOY
	db "Jack@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


SchoolgirlGroup:
; ================================
; ================

	; SCHOOLGIRL
	db "Molly@"
	db TRAINERTYPE_NICKNAME
	; party
	db -1 ; end

; ================
; ================================


PsychicGroup:
; ================================
; ================

	; PSYCHIC_T
	db "Nathan@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


HexManiacGroup:
; ================================
; ================

	; HEX_MANIAC
	db "Tamara@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


SageGroup:
; ================================
; ================

	; SAGE
	db "Chow@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


MediumGroup:
; ================================
; ================

	; MEDIUM
	db "Martha@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


KimonoGirlGroup:
; ================================
; ================

	; KIMONO_GIRL
	db "Naoko@"
	db TRAINERTYPE_ITEM
	; party
	db -1 ; end

; ================
; ================================


ElderGroup:
; ================================
; ================

	; ELDER
	db "Li@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


SrAndJrGroup:
; ================================
; ================

	; SR_AND_JR
	db "Jo & Cath@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


CoupleGroup:
; ================================
; ================

	; COUPLE
	db "Gail & Eli@"
	db TRAINERTYPE_PERSONALITY
	; party
	db -1 ; end

; ================
; ================================


GentlemanGroup:
; ================================
; ================

	; GENTLEMAN
	db "Preston@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


RichBoyGroup:
; ================================
; ================

	; RICH_BOY
	db "Winston@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


LadyGroup:
; ================================
; ================

	; LADY
	db "Jessica@"
	db TRAINERTYPE_ITEM
	; party
	db -1 ; end

; ================
; ================================


BreederGroup:
; ================================
; ================

	; BREEDER
	db "Julie@"
	db TRAINERTYPE_ITEM
	; party
	db -1 ; end

; ================
; ================================


BakerGroup:
; ================================
; ================

	; BAKER
	db "Chelsie@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


CowgirlGroup:
; ================================
; ================

	; COWGIRL
	db "Annie@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


SailorGroup:
; ================================
; ================

	; SAILOR
	db "Huey@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


SwimmerMGroup:
; ================================
; ================

	; SWIMMERM
	db "Harold@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


SwimmerFGroup:
; ================================
; ================

	; SWIMMERF
	db "Elaine@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


BurglarGroup:
; ================================
; ================

	; BURGLAR
	db "Duncan@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


PIGroup:
; ================================
; ================

	; PI
	db "Looker@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


ScientistGroup:
; ================================
; ================

	; SCIENTIST
	db "Lowell@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


RocketScientistGroup:
; ================================
; ================

	; SCIENTIST
	db "Ross@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


BoarderGroup:
; ================================
; ================

	; BOARDER
	db "Ronald@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


SkierGroup:
; ================================
; ================

	; SKIER
	db "Roxanne@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


BlackbeltGroup:
; ================================
; ================

	; BLACKBELT_T
	db "Kenji@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


BattleGirlGroup:
; ================================
; ================

	; BATTLE_GIRL
	db "Subaru@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


DragonTamerGroup:
; ================================
; ================

	; DRAGON_TAMER
	db "Paul@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


EngineerGroup:
; ================================
; ================

	; ENGINEER
	db "Smith@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


TeacherGroup:
; ================================
; ================

	; TEACHER
	db "Colette@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================



GuitaristMGroup:
; ================================
; ================

	; GUITARISTM
	db "Clyde@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


GuitaristFGroup:
; ================================
; ================

	; GUITARISTF
	db "Janet@"
	db TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


BikerGroup:
; ================================
; ================

	; BIKER
	db "Dwayne@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


RoughneckGroup:
; ================================
; ================

	; ROUGHNECK
	db "Brian@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


TamerGroup:
; ================================
; ================

	; TAMER
	db "Brett@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


ArtistGroup:
; ================================
; ================

	; ARTIST
	db "Reina@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


AromaLadyGroup:
; ================================
; ================

	; AROMA_LADY
	db "Dahlia@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


WaitressGroup:
; ================================
; ================
; ================
; ================================


SightseerMGroup:
; ================================
; ================

	; SIGHTSEERM
	db "Jaska@"
	db TRAINERTYPE_NORMAL

	; TODO: party
	db -1 ; end

; ================
; ================================


SightseerFGroup:
; ================================
; ================

	; SIGHTSEERF
	db "Rosie@"
	db TRAINERTYPE_NORMAL

	; TODO: party
	db -1 ; end

; ================
; ================================


SightseersGroup:
; ================================
; ================

	; SIGHTSEERS
	db "Li & Su@"
	db TRAINERTYPE_PERSONALITY
	; party
	db -1 ; end

; ================
; ================================


CooltrainerMGroup:
; ================================
; ================

	; COOLTRAINERM
	db "Gaven@"
	db TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


SECTION "Enemy Trainer Parties 2", ROMX


CooltrainerFGroup:
; ================================
; ================

	; COOLTRAINERF
	db "Beth@"
	db TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


AceDuoGroup:
; ================================
; ================

	; ACE_DUO
	db "Elan & Ida@"
	db TRAINERTYPE_PERSONALITY
	; party
	db -1 ; end

; ================
; ================================


VeteranMGroup:
; ================================
; ================

	; VETERANM
	db "Matthew@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


VeteranFGroup:
; ================================
; ================

	; VETERANF
	db "Joanne@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


ProtonGroup:
; ================================
; ================

	; PROTON
	db "Proton@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


PetrelGroup:
; ================================
; ================

	; PETREL
	db "Petrel@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


ArcherGroup:
; ================================
; ================

	; ARCHER
	db "Archer@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


ArianaGroup:
; ================================
; ================

	; ARIANA
	db "Ariana@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


GiovanniGroup:
; ================================
; ================

	; GIOVANNI
	db "Giovanni@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 70, MEWTWO, ARMOR_SUIT, ABILITY_2 | MODEST, MALE, "???@"
		db SHADOW_BALL, PSYSTRIKE, NASTY_PLOT, AURA_SPHERE
	db -1 ; end

; ================

	; GIOVANNI
	db "Giovanni@"
	db TRAINERTYPE_ITEM
	; party
	db -1 ; end

; ================
; ================================


ProfOakGroup:
; ================================
; ================

	; PROF_OAK
	db "Oak@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


ProfElmGroup:
; ================================
; ================

	; PROF_ELM
	db "Elm@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


ProfIvyGroup:
; ================================
; ================

	; PROF_IVY
	db "Ivy@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


MysticalmanGroup:
; ================================
; ================

	; MYSTICALMAN
	db "Eusine@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


KarateKingGroup:
; ================================
; ================

	; KARATE_KING
	db "Kiyo@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


TowerTycoonGroup:
; ================================
; ================

	; unused
	; TOWERTYCOON
	db "Palmer@"
	db TRAINERTYPE_NORMAL
;	; party
	db -1 ; end

; ================
; ================================


JessieJamesGroup:
; ================================
; ================

	; JESSIE_JAMES
	db "& James@"
	db TRAINERTYPE_PERSONALITY
	; party
	db -1 ; end

; ================
; ================================


LoreleiGroup:
; ================================
; ================

	; LORELEI
	db "Lorelei@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


AgathaGroup:
; ================================
; ================

	; AGATHA
	db "Agatha@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


StevenGroup:
; ================================
; ================

	; STEVEN
	db "Steven@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


CynthiaGroup:
; ================================
; ================

	; CYNTHIA
	db "Cynthia@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


InverGroup:
; ================================
; ================

	; INVER
	db "Inver@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_DVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


CherylGroup:
; ================================
; ================

	; CHERYL
	db "Cheryl@"
	db TRAINERTYPE_EVS
	; party
	db -1 ; end

; ================
; ================================


RileyGroup:
; ================================
; ================

	; RILEY
	db "Riley@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


BuckGroup:
; ================================
; ================

	; BUCK
	db "Buck@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


MarleyGroup:
; ================================
; ================

	; MARLEY
	db "Marley@"
	db TRAINERTYPE_EVS
	; party
	db -1 ; end

; ================
; ================================


MiraGroup:
; ================================
; ================

	; MIRA
	db "Mira@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


AnabelGroup:
; ================================
; ================

	; ANABEL
	db "Anabel@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


DarachGroup:
; ================================
; ================

	; DARACH
	db "Darach@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


CaitlinGroup:
; ================================
; ================

	; CAITLIN
	db "Caitlin@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


CandelaGroup:
; ================================
; ================

	; CANDELA
	db "Candela@"
	db TRAINERTYPE_ITEM
	; party
	db -1 ; end

; ================
; ================================


BlancheGroup:
; ================================
; ================

	; BLANCHE
	db "Blanche@"
	db TRAINERTYPE_ITEM
	; party
	db -1 ; end

; ================
; ================================


SparkGroup:
; ================================
; ================

	; SPARK_T
	db "Spark@"
	db TRAINERTYPE_ITEM
	; party
	db -1 ; end

; ================
; ================================


FlanneryGroup:
; ================================
; ================

	; FLANNERY
	db "Flannery@"
	db TRAINERTYPE_EVS
	; party
	db -1 ; end

; ================
; ================================


MayleneGroup:
; ================================
; ================

	; MAYLENE
	db "Maylene@"
	db TRAINERTYPE_EVS
	; party
	db -1 ; end

; ================
; ================================


SkylaGroup:
; ================================
; ================

	; SKYLA
	db "Skyla@"
	db TRAINERTYPE_EVS
	; party
	db -1 ; end

; ================
; ================================


ValerieGroup:
; ================================
; ================

	; VALERIE
	db "Valerie@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


KukuiGroup:
; ================================
; ================

	; KUKUI
	db "Kukui@"
	db TRAINERTYPE_EVS
	; party
	db -1 ; end

; ================

	; KUKUI
	db "Kukui@"
	db TRAINERTYPE_NORMAL
	; party
	db -1 ; end

; ================
; ================================


VictorGroup:
; ================================
; ================

	; VICTOR
	db "Victor@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


BillGroup:
; ================================
; ================

	; BILL_T
	db "Bill@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 62, VAPOREON, MYSTIC_WATER
		db RECOVER, BARRIER, HAZE, SCALD
	db 62, JOLTEON, MAGNET
		db THUNDER_WAVE, THUNDERBOLT, LIGHT_SCREEN, QUICK_ATTACK
	db 62, FLAREON, CHARCOAL
		db FLARE_BLITZ, DOUBLE_EDGE, SMOKESCREEN, ROCK_SMASH
	db 63, LEAFEON, MIRACLE_SEED
		db SEED_BOMB, SWORDS_DANCE, HEALINGLIGHT, X_SCISSOR
	db 63, GLACEON, NEVERMELTICE
		db ICE_BEAM, MIRROR_COAT, RECOVER, QUICK_ATTACK
	db 66, PORYGON2, EVIOLITE
		db TRI_ATTACK, THUNDERBOLT, ICE_BEAM, RECOVER
	db -1 ; end

; ================
; ================================


YellowGroup:
; ================================
; ================

	; YELLOW
	db "Yellow@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


WalkerGroup:
; ================================
; ================

	; WALKER
	db "Walker@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


ImakuniGroup:
; ================================
; ================

	; IMAKUNI
	db "Imakuni@"
	db TRAINERTYPE_ITEM
	; party
	db -1 ; end

; ================
; ================================


LawrenceGroup:
; ================================
; ================

	; LAWRENCE
	db "Lawrence@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db -1 ; end

; ================
; ================================


ReiGroup:
; ================================
; ================

	; REI
	db "Maiden Rei@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS
	; party
	db -1 ; end

; ================
; ================================
