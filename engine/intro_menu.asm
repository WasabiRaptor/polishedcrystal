InitIntroGradient::
	; top stripe
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH
	ld a, $70
	call ByteFill
	; middle stripe
	; hlcoord 0, 1
	ld bc, SCREEN_WIDTH
	ld a, $71
	call ByteFill
	; bottom stripe
	; hlcoord 0, 2
	ld bc, SCREEN_WIDTH
	ld a, $72
	call ByteFill

	ld de, .IntroGradientGFX
	ld hl, VTiles2 tile $70
	lb bc, BANK(.IntroGradientGFX), 3
	jp Get2bpp

.IntroGradientGFX:
INCBIN "gfx/new_game/intro_gradient.2bpp"

_MainMenu: ; 5ae8
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld de, MUSIC_MAIN_MENU
	ld a, e
	ld [wMapMusic], a
	call PlayMusic
	farcall MainMenu
	jp StartTitleScreen
; 5b04

NewGame_ClearTileMapEtc: ; 5b44
	xor a
	ldh [hMapAnims], a
	call ClearTileMap
	call LoadFontsExtra
	call LoadStandardFont
	jp ClearWindowData
; 5b54

OptionsMenu: ; 5b64
	farjp _OptionsMenu
; 5b6b

NewGamePlus:
	xor a
	ldh [hBGMapMode], a
	farcall TryLoadSaveFile
	ret c
	jr _NewGame_FinishSetup

NewGame: ; 5b6b
	xor a
	ldh [hBGMapMode], a
	call ResetWRAM_NotPlus
_NewGame_FinishSetup:
	call ResetWRAM
	call NewGame_ClearTileMapEtc
	;call SetInitialOptions
	;call ProfElmSpeech
	ld c, 31
	call FadeToBlack
	ld c, 31
	call FadeToWhite
	ld b, CGB_INTRO_PALS
	call GetCGBLayout
	call ClearTileMap
	call InitGender
	call NamePlayer
	call InitializeWorld
	ld a, 1
	ld [wPreviousLandmark], a

	ld a, SPAWN_HOME
	ld [wDefaultSpawnpoint], a

	ld a, MAPSETUP_WARP
	ldh [hMapEntryMethod], a
	jp FinishContinueFunction
; 5b8f

ResetWRAM_NotPlus:
	xor a
	ld [wSavedAtLeastOnce], a

	ld [wBattlePoints], a

	ld [wCurBox], a

	call SetDefaultBoxNames

	ld a, BANK(sBoxCount)
	call GetSRAMBank
	ld hl, sBoxCount
	call _ResetWRAM_InitList
	call CloseSRAM

START_MONEY EQU 3000
	ld hl, wMoney
	ld [hl], START_MONEY / $10000
	inc hl
	ld [hl], START_MONEY / $100 % $100
	inc hl
	ld [hl], START_MONEY % $100


	ldh a, [rSVBK]
	push af
	ld a, BANK(wTotalEncounters)
	ldh [rSVBK], a

	ld hl, wTotalSavedEncounters
	ld bc, wTotalSavedEncountersEnd - wTotalSavedEncounters
	xor a
	call ByteFill

	ld a, BANK(wPokedexCaughtSeen)
	ldh [rSVBK], a

	ld hl, wPokedexCaughtSeen
	ld bc, wPokedexCaughtSeenEnd - wPokedexCaughtSeen
	xor a
	call ByteFill

	pop af
	ldh [rSVBK], a
	ret

ResetWRAM: ; 5ba7
	ld hl, wSprites
	ld bc, wOptions1 - wSprites
	xor a
	call ByteFill

	ld hl, wRAM1Start
	ld bc, wGameData - wRAM1Start
	xor a
	call ByteFill

	; erase wGameData, but keep Money, wCurBox, wBoxNames, and wBattlePoints
	ld hl, wGameData
	ld bc, wMoney - wGameData
	xor a
	call ByteFill
	ld hl, MoneyEnd
	ld bc, wCurBox - MoneyEnd
	xor a
	call ByteFill
	ld hl, wBoxNamesEnd
	ld bc, wBattlePoints - wBoxNamesEnd
	xor a
	call ByteFill
	ld hl, wBattlePoints + 1
	ld bc, wGameDataEnd - (wBattlePoints + 1)
	xor a
	call ByteFill

	call Random
	ldh a, [rLY]
	ldh [hSecondsBackup], a
	call DelayFrame
	ldh a, [hRandomSub]
	ld [wPlayerID], a
	ldh a, [rLY]
	ldh [hSecondsBackup], a
	call DelayFrame
	ldh a, [hRandomAdd]
	ld [wPlayerID + 1], a

	call Random
	ld [wSecretID], a
	call DelayFrame
	call Random
	ld [wSecretID + 1], a

	ld hl, wPartyCount
	call _ResetWRAM_InitList

	xor a
	ld [wMonStatusFlags], a

	ld [wPlayerOverworldSprite], a

	ld hl, wNumItems
	call _ResetWRAM_InitList

	ld hl, wNumMedicine
	call _ResetWRAM_InitList

	ld hl, wNumBalls
	call _ResetWRAM_InitList

	ld hl, wNumBerries
	call _ResetWRAM_InitList

	ld hl, wNumPCItems
	call _ResetWRAM_InitList

	ld hl, wTMsHMs
	xor a
rept ((NUM_TMS + NUM_HMS) + 7) / 8
	ld [hli], a
endr

	ld hl, wKeyItems
	xor a
rept ((NUM_KEY_ITEMS) + 7) / 8
	ld [hli], a
endr

	xor a
	ld [wRoamMon1Species], a
	ld [wRoamMon2Species], a
	ld [wRoamMon3Species], a
	ld a, -1
	ld [wRoamMon1MapGroup], a
	ld [wRoamMon2MapGroup], a
	ld [wRoamMon3MapGroup], a
	ld [wRoamMon1MapNumber], a
	ld [wRoamMon2MapNumber], a
	ld [wRoamMon3MapNumber], a

	call LoadOrRegenerateLuckyIDNumber
	;call InitializeMagikarpHouse

	xor a
	ld [wMonType], a

	ld [wCycleCount], a

	ld [wCoins], a
	ld [wCoins + 1], a

	ld [wRegisteredItems], a
	ld [wRegisteredItems + 1], a
	ld [wRegisteredItems + 2], a
	ld [wRegisteredItems + 3], a

	ld [wWhichMomItem], a

START_ITEM_TRIGGER_BALANCE EQU 2300
	ld hl, wMomItemTriggerBalance
	ld [hl], START_ITEM_TRIGGER_BALANCE / $10000
	inc hl
	ld [hl], START_ITEM_TRIGGER_BALANCE / $100 % $100
	inc hl
	ld [hl], START_ITEM_TRIGGER_BALANCE % $100

	call InitializeNPCNames

	farcall InitDecorations

	ld a, %10000001 ;follower enabled, pokemon slot 1 for default
	ld [wFollowerStatus], a

	ld a, NUM_CYCLE_HOURS
	ld [wHoursRemaining], a

	jp ResetGameTime
; 5ca1

_ResetWRAM_InitList: ; 5ca1
; Loads 0 in the count and -1 in the first item or mon slot.
	xor a
	ld [hli], a
	dec a
	ld [hl], a
	ret
; 5ca6

SetDefaultBoxNames: ; 5ca6
	ld hl, wBoxNames
	ld c, 0
.loop
	push hl
	ld de, .Box
	call CopyName2
	dec hl
	ld a, c
	inc a
	cp 10
	jr c, .less
	sub 10
	ld [hl], "1"
	inc hl

.less
	add "0"
	ld [hli], a
	ld [hl], "@"
	pop hl
	ld de, 9
	add hl, de
	inc c
	ld a, c
	cp NUM_BOXES
	jr c, .loop
	ret

.Box:
	db "Box@"
; 5cd3

InitializeNPCNames: ; 5ce9
	ld hl, .Rival
	ld de, wRivalName
	call .Copy

	ld hl, .Backup
	ld de, wBackupName
	call .Copy

	ld hl, .Trendy
	ld de, wTrendyPhrase

.Copy:
	ld bc, PLAYER_NAME_LENGTH
	rst CopyBytes
	ret

.Rival:
.Backup: db "???@"
.Trendy: db "Prism@"
; 5d23

InitializeWorld: ; 5d23
	;call ShrinkPlayer
	farcall SpawnPlayer
	farcall SpawnFollower
	farjp _InitializeStartDay
; 5d33

LoadOrRegenerateLuckyIDNumber: ; 5d33
	ld a, BANK(sLuckyIDNumber)
	call GetSRAMBank
	ld a, [wCurDay]
	inc a
	ld b, a
	ld a, [sLuckyNumberDay]
	cp b
	ld a, [sLuckyIDNumber + 1]
	ld c, a
	ld a, [sLuckyIDNumber]
	jr z, .skip
	ld a, b
	ld [sLuckyNumberDay], a
	call Random
	ld c, a
	call Random

.skip
	ld [wLuckyIDNumber], a
	ld [sLuckyIDNumber], a
	ld a, c
	ld [wLuckyIDNumber + 1], a
	ld [sLuckyIDNumber + 1], a
	jp CloseSRAM
; 5d65

Continue: ; 5d65
	farcall TryLoadSaveFile
	ret c

	call LoadStandardMenuDataHeader
	call DisplaySaveInfoOnContinue
	ld a, $1
	ldh [hBGMapMode], a
	ld c, 20
	call DelayFrames
	call ConfirmContinue
	jr nc, .Check1Pass
	jp CloseWindow

.Check1Pass:
	call Continue_CheckEGO_ResetInitialOptions
;	jr nc, .Check3Pass
;	jp CloseWindow

;.Check3Pass:
	ld a, $8
	ld [wMusicFade], a
	ld a, MUSIC_NONE % $100
	ld [wMusicFadeIDLo], a
	ld a, MUSIC_NONE / $100
	ld [wMusicFadeIDHi], a
	call ClearBGPalettes
	call CloseWindow
	call ClearTileMap
	ld c, 20
	call DelayFrames
	farcall JumpRoamMons
	ld a, [wSpawnAfterChampion]
	cp SPAWN_LANCE
	jr z, .SpawnAfterE4
	ld a, MAPSETUP_CONTINUE
	ldh [hMapEntryMethod], a
	jp FinishContinueFunction

.SpawnAfterE4:
	ld a, SPAWN_HOME
	ld [wDefaultSpawnpoint], a
	call PostCreditsSpawn
	jp FinishContinueFunction
; 5de2

SpawnAfterLeaf: ; 5de2
	ld a, SPAWN_HOME
	ld [wDefaultSpawnpoint], a
; 5de7

PostCreditsSpawn: ; 5de7
	xor a
	ld [wSpawnAfterChampion], a
	ld a, MAPSETUP_WARP
	ldh [hMapEntryMethod], a
	ret
; 5df0

ConfirmContinue: ; 5e34
.loop
	call DelayFrame
	call GetJoypad
	ld hl, hJoyPressed
	bit A_BUTTON_F, [hl]
	ret nz
	bit B_BUTTON_F, [hl]
	jr z, .loop
	scf
	ret
; 5e48


Continue_CheckEGO_ResetInitialOptions:
	ld a, [wInitialOptions]
	bit RESET_INIT_OPTS, a
	jr z, .pass
	call SetInitialOptions
.pass
	xor a
	ret

FinishContinueFunction: ; 5e5d
.loop
	xor a
	ld [wDontPlayMapMusicOnReload], a
	ld [wLinkMode], a
	ld hl, wGameTimerPause
	set 0, [hl]
	res 7, [hl]
	ld hl, wEnteredMapFromContinue
	set 1, [hl]
	farcall OverworldLoop
	ld a, [wSpawnAfterChampion]
	cp SPAWN_LEAF
	jr z, .AfterLeaf
	jp SoftReset

.AfterLeaf:
	call SpawnAfterLeaf
	jr .loop
; 5e85

DisplaySaveInfoOnContinue: ; 5e85
	lb de, 4, 5
	jr DisplayNormalContinueData
; 5e9a

DisplaySaveInfoOnSave: ; 5e9a
	lb de, 0, 0
	; fallthrough
; 5e9f

DisplayNormalContinueData: ; 5e9f
	call Continue_LoadMenuHeader
	call Continue_DisplayBadgesDexPlayerName
	call Continue_PrintGameTime
	call LoadFontsExtra
	jp UpdateSprites
; 5eaf

; 5ebf

Continue_LoadMenuHeader: ; 5ebf
	xor a
	ldh [hBGMapMode], a
	ld hl, .MenuDataHeader_Dex
	call _OffsetMenuDataHeader
	call MenuBox
	jp PlaceVerticalMenuItems
; 5ed9

.MenuDataHeader_Dex: ; 5ed9
	db $40 ; flags
	db 00, 00 ; start coords
	db 06, 11 ; end coords
	dw .MenuData2_Dex
	db 1 ; default option
; 5ee1

.MenuData2_Dex: ; 5ee1
	db $00 | 1 << 6 ; flags
	db 1 ; items
	db "Player:<LNBRK><_NEXT><PLAYER><LNBRK>"
	db "Cycles:<LNBRK>"
	db "Pokédex:<LNBRK>"
	db "Time:@"
; 5f1c


Continue_DisplayBadgesDexPlayerName: ; 5f1c
	call MenuBoxCoord2Tile
	push hl
	decoord 8, 3, 0
	add hl, de
	call Continue_DisplayCycleCount
	pop hl
	push hl
	decoord 7, 4, 0
	add hl, de
	call Continue_DisplayPokedexNumCaught
	pop hl
	ret


Continue_PrintGameTime: ; 5f40
	decoord 5, 5, 0
	add hl, de
	jp Continue_DisplayGameTime
; 5f48

Continue_UnknownGameTime: ; 5f48
	decoord 5, 5, 0
	add hl, de
	ld de, .three_question_marks
	jp PlaceString

.three_question_marks
	db " ???@"
; 5f58

Continue_DisplayCycleCount: ; 5f58
	ld de, wCycleCount
	lb bc, 1 | PRINTNUM_LEFTALIGN, 3
	predef_jump PrintNum
; 5f6b

Continue_DisplayPokedexNumCaught: ; 5f6b
	ld a, [wStatusFlags]
	bit 0, a ; Pokedex
	ret z
	push hl
	ld hl, wPokedexCaught

	ldh a, [rSVBK]
	push af ; 1
	ld a, BANK(wPokedexCaughtSeen)
	ldh [rSVBK], a

	ld hl, wPokedexCaught
	ld bc, wPokedexCaughtEnd - wPokedexCaught
	farcall PokedexCountSeenCaught

	pop af ; 0
	ldh [rSVBK], a

	pop hl
	ld de, wPokedexSeenCaughtCount
	lb bc, 2, 4
	predef_jump PrintNum
; 5f84

Continue_DisplayGameTime: ; 5f84
	ld de, wGameTimeHours
	lb bc, PRINTNUM_LEADINGZEROS | 2, 3
	predef PrintNum
	ld [hl], "<COLON>"
	inc hl
	ld de, wGameTimeMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	predef_jump PrintNum
; 5f99

InitGender: ; 48dcb (12:4dcb)
	ld hl, WhitePal
	ld de, wUnknBGPals palette 0
	ld bc, 1 palettes
	ld a, 5
	call FarCopyWRAM
	ld c, 15
	call FadePalettes

	call ClearTileMap
	call ApplyAttrAndTilemapInVBlank
	call SetPalettes

	ld b, CGB_INTRO_PALS
	call GetCGBLayout
	call InitIntroGradient
	call SetPalettes

	ld hl, AreYouABoyOrAreYouAGirlText
	call PrintText

	ld hl, .MenuDataHeader
	call LoadMenuDataHeader
	call ApplyAttrAndTilemapInVBlank
	call VerticalMenu
	call CloseWindow
	ld a, [wMenuCursorY]
	dec a
	ld [wPlayerOverworldSprite], a

	call ClearTileMap
	call DrawIntroPlayerPic

	ld b, CGB_INTRO_PALS
	call GetCGBLayout
	call InitIntroGradient
	call Intro_RotatePalettesLeftFrontpic

	ld hl, SoYoureABoyText
	ld a, [wPlayerOverworldSprite]
	and a
	jr z, .boy
	ld hl, SoYoureAGirlText
.boy
	call PrintText

	call YesNoBox
	jr c, InitGender
	ret
; 48dfc (12:4dfc)

.MenuDataHeader: ; 0x48dfc
	db $40 ; flags
	db 7, 13 ; start coords
	db 11, 19 ; end coords
	dw .MenuData2
	dw .MenuData3
	db 1 ; default option
; 0x48e04

.MenuData2: ; 0x48e04
	db $c1 ; flags
	db 2 ; items
	db "Boy@"
	db "Girl@"
; 0x48e0f
.MenuData3:
	db $c1
	db 2
	dbw $c0, VTiles0 tile $c0
	dbw $c2, VTiles0 tile $c2

AreYouABoyOrAreYouAGirlText: ; 0x48e0f
	; Are you a boy? Or are you a girl?
	text_jump Text_AreYouABoyOrAreYouAGirl
	db "@"
; 0x48e14

SoYoureABoyText:
	; So you're a boy?
	text_jump Text_SoYoureABoy
	db "@"

SoYoureAGirlText:
	; So you're a girl?
	text_jump Text_SoYoureAGirl
	db "@"

NamePlayer: ; 0x6074
	ld b, $1 ; player
	ld de, wPlayerName
	farcall NamingScreen
	ld hl, wPlayerName
	ld de, DefaultMalePlayerName
	ld a, [wPlayerOverworldSprite]
	bit 0, a
	jr z, .Male
	ld de, DefaultFemalePlayerName
.Male:
	jp InitName

INCLUDE "data/default_player_names.asm"

ShrinkPlayer: ; 610f

	ldh a, [hROMBank]
	push af

	ld a, 0 << 7 | 32 ; fade out
	ld [wMusicFade], a
	ld de, MUSIC_NONE
	ld a, e
	ld [wMusicFadeIDLo], a
	ld a, d
	ld [wMusicFadeIDHi], a

	ld de, SFX_ESCAPE_ROPE
	call PlaySFX
	pop af
	rst Bankswitch

	ld c, 8
	call DelayFrames

	ld hl, Shrink1Pic
	ld b, BANK(Shrink1Pic)
	call ShrinkFrame

	ld c, 8
	call DelayFrames

	ld hl, Shrink2Pic
	ld b, BANK(Shrink2Pic)
	call ShrinkFrame

	ld c, 8
	call DelayFrames

	hlcoord 6, 4
	lb bc, 7, 7
	call ClearBox

	ld c, 3
	call DelayFrames

	call Intro_PlacePlayerSprite
	call LoadFontsExtra

	ld c, 50
	call DelayFrames

	ld c, 15
	call FadeToWhite
	jp ClearTileMap
; 616a

Intro_RotatePalettesLeftFrontpic: ; 616a
	ld hl, IntroFadePalettes
	ld b, IntroFadePalettesEnd - IntroFadePalettes
.loop
	ld a, [hli]
	call DmgToCgbBGPals
	ld c, 10
	call DelayFrames
	dec b
	jr nz, .loop
	ret
; 617c

IntroFadePalettes: ; 0x617c
	db %01010100
	db %10101000
	db %11111100
	db %11111000
	db %11110100
	db %11100100
IntroFadePalettesEnd
; 6182

DrawIntroPlayerPic:
	xor a
	ld [wCurPartySpecies], a
	ld a, [wPlayerOverworldSprite]
	bit 0, a
	jr z, .male
	ld a, CARRIE
	jr .ok
.male
	ld a, CAL
.ok
	ld [wTrainerClass], a
Intro_PrepTrainerPic: ; 619c
	ld de, VTiles2
	farcall GetTrainerPic
	jr FinishPrepIntroPic
; 61b4

ShrinkFrame: ; 61b4
	ld de, VTiles2
	ld c, $31
	predef DecompressPredef
FinishPrepIntroPic:
	xor a
	ldh [hGraphicStartTile], a
	hlcoord 6, 4
	lb bc, 7, 7
	predef PlaceGraphic
	ret
; 61cd

Intro_PlacePlayerSprite: ; 61cd
	xor a
	farcall GetPlayerIcon

	ld hl, wSprites
	ld de, .sprites
	ld a, [de]
	inc de

	ld c, a
.loop
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a

	ld b, 0
	ld a, [wPlayerOverworldSprite]
	bit 0, a
	jr z, .male
	ld b, 1
.male
	ld a, b

	ld [hli], a
	dec c
	jr nz, .loop
	ret
; 61fe

.sprites ; 61fe
	db 4
	db  9 * 8 + 4,  9 * 8, 0
	db  9 * 8 + 4, 10 * 8, 1
	db 10 * 8 + 4,  9 * 8, 2
	db 10 * 8 + 4, 10 * 8, 3
; 620b


CrystalIntroSequence: ; 620b
	farcall Copyright_GFPresents
	jr c, StartTitleScreen
	farcall CrystalIntro
	jr nc, StartTitleScreen.already_got_graphics
StartTitleScreen: ; 6219
	farcall BrassTitleScreenSetup
.already_got_graphics
	ld hl, rIE
	set LCD_STAT, [hl]

	xor a
	ld [wJumptableIndex], a
.loop
	call RunTitleScreen
	jr nc, .loop

	call ClearSprites
	call ClearBGPalettes

	ld hl, rIE
	res LCD_STAT, [hl]

	call ClearScreen
	call ApplyAttrAndTilemapInVBlank
	xor a
	ldh [hLCDCPointer], a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	ld b, CGB_DIPLOMA
	call GetCGBLayout
	call UpdateTimePals
	ld a, [wIntroSceneFrameCounter]
	cp $6
	jr c, .ok
	xor a
.ok
	ld e, a
	ld d, 0
	ld hl, .dw
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 626a

.dw
	dw _MainMenu
	dw DeleteSaveData
	dw CrystalIntroSequence
	dw CrystalIntroSequence
	dw ResetClock
	dw ResetInitialOptions
; 6274


RunTitleScreen: ; 627b
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .done_title
	call TitleScreenScene
	call DelayFrame
	and a
	ret

.done_title
	scf
	ret
; 6292

TitleScreenScene: ; 62a3
	ld e, a
	ld d, 0
	ld hl, .scenes
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 62af

.scenes
	dw TitleScreenEntrance
	dw TitleScreenTimer
	dw TitleScreenMain
	dw TitleScreenEnd
; 62b7


TitleScreenEntrance: ; 62bc
	ldh a, [rSVBK]
	push af
	ld a, BANK(wLYOverrides)
	ldh [rSVBK], a

	call InitTitleWater

	pop af
	ldh [rSVBK], a

	ld a, LOW(rSCX)
	ldh [hLCDCPointer], a

; Next scene
	ld hl, wJumptableIndex
	inc [hl]

	ld a, BANK(sPlayerData)
	call GetSRAMBank
	ld hl, sPlayerData + wStatusFlags - wPlayerData
	ld de, wStatusFlags
	ld a, [hl]
	ld [de], a
	call CloseSRAM

; Play the title screen music.
	ld de, MUSIC_TITLE
	ld a, [wSaveFileExists]
	and a
	jr z, .ok
	ld hl, wStatusFlags
	bit 6, [hl] ; hall of fame
	jr z, .ok
	ld de, MUSIC_TITLE_XY
.ok
	call PlayMusic

	ret
; 62f6


TitleScreenTimer: ; 62f6

; Next scene
	ld hl, wJumptableIndex
	inc [hl]

	ld a, BANK(sPlayerData)
	call GetSRAMBank
	ld hl, sPlayerData + wStatusFlags - wPlayerData
	ld de, wStatusFlags
	ld a, [hl]
	ld [de], a
	call CloseSRAM

; Start a timer
	ld de, 73 * 60 + 36
	ld a, [wSaveFileExists]
	and a
	jr z, .ok
	ld hl, wStatusFlags
	bit 6, [hl] ; hall of fame
	jr z, .ok
	ld de, 56 * 60
.ok
	ld hl, wcf65
	ld [hl], e
	inc hl
	ld [hl], d
	ret
; 6304
InitTitleWater::
	ld hl, wLYOverrides + 4 + (10 * 8) ;where the water ripple should start
	xor a ;0
	ld [hli], a
	call .initThreeLines
	inc a ;1
	call .initThreeLines
	inc a ;2
	ld [hli], a
	call .initThreeLines
	dec a ;1
	call .initThreeLines
	dec a ;0
	ld [hli], a
	call .initThreeLines
	dec a ;-1
	call .initThreeLines
	dec a ;-2
	ld [hli], a
	call .initThreeLines
	inc a ;-1
	;fallthrough
.initThreeLines
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ret


RippleTitleWater:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wLYOverrides)
	ldh [rSVBK], a

	ld hl, wLYOverrides + 3 + (10 * 8) ;where the water ripple should start
	ld c, 4 + (3 * 8) ; number of lines of the water ripple
	ld a, [wLYOverrides + 2 + (10 * 8) + 4 + (3 * 8)] ;the last ripple
	ld b, a
.loop
	ld a, [hl]
	ld [hl], b
	ld b, a
	inc hl
	dec c
	jr nz, .loop
	pop af
	ldh [rSVBK], a
	ret

TitleScreenMain: ; 6304

; Run the timer down.
	ld hl, wcf65
	ld a, [hli]
	ld e, a
	and 3
	call z, RippleTitleWater

	ld d, [hl]
	ld a, e
	or d
	;jr z, .end

	dec de
	ld [hl], d
	dec hl
	ld [hl], e

	call DelayFrame

; Save data can be deleted by pressing Up + B + Select.
	call GetJoypad
	ld hl, hJoyDown

	ld a, [hl]
	and D_UP + B_BUTTON + SELECT
	cp  D_UP + B_BUTTON + SELECT
	jr z, .delete_save_data

; The clock can be reset by pressing Down + B.
	ld a, [hl]
	and D_DOWN + B_BUTTON
	cp  D_DOWN + B_BUTTON
	jr z, .clock_reset

; The early game options can be reset by pressing Left + B.
	ld a, [hl]
	and D_LEFT + B_BUTTON
	cp  D_LEFT + B_BUTTON
	jr z, .early_option_reset

; Press Start or A to start the game.
.check_start
	ld a, [hl]
	and START | A_BUTTON
	jr nz, .start_game
	ret

.done
	ld [wIntroSceneFrameCounter], a
; Return to the intro sequence.
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

.end
; Next scene
	ld hl, wJumptableIndex
	inc [hl]

; Fade out the title screen music
	xor a
	ld [wMusicFadeIDLo], a
	ld [wMusicFadeIDHi], a
	ld hl, wMusicFade
	ld [hl], 8 ; 1 second

	ld hl, wcf65
	inc [hl]
	ret

.start_game
	xor a
	jr .done

.delete_save_data
	ld a, 1
	jr .done

.clock_reset
	ld a, 4
	jr .done

.early_option_reset
	ld a, 5
	jr .done

; 6375

TitleScreenEnd: ; 6375

; Wait until the music is done fading.

	ld hl, wcf65
	inc [hl]

	ld a, [wMusicFade]
	and a
	ret nz

	ld a, 2
	ld [wIntroSceneFrameCounter], a

; Back to the intro.
	ld hl, wJumptableIndex
	set 7, [hl]
	ret
; 6389

DeleteSaveData: ; 6389
	farcall _DeleteSaveData
	jp Init
; 6392

ResetClock: ; 6392
	farcall _ResetClock
	jp Init
; 639b

ResetInitialOptions:
	farcall _ResetInitialOptions
	jp Init

Copyright: ; 63e2
	call ClearTileMap
	call LoadFontsExtra
	ld de, CopyrightGFX
	ld hl, VTiles2 tile $60
	lb bc, BANK(CopyrightGFX), $1d
	call Request2bpp
	hlcoord 2, 7
	ld de, CopyrightString
	jp PlaceString
; 63fd

CopyrightString: ; 63fd
	; ©1995-2001 Nintendo
	db   $60, $61, $62, $63, $64, $65, $66
	db   $67, $68, $69, $6a, $6b, $6c

	; ©1995-2001 Creatures inc.
	next $60, $61, $62, $63, $64, $65, $66
	db   $6d, $6e, $6f, $70, $71, $72, $7a, $7b, $7c

	; ©1995-2001 GAME FREAK inc.
	next $60, $61, $62, $63, $64, $65, $66
	db   $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c

	db "@"
; 642e

GameInit:: ; 642e
	farcall TryLoadSaveData
	call ClearWindowData
	call ClearBGPalettes
	call ClearTileMap
	ld a, VBGMap0 / $100
	ldh [hBGMapAddress + 1], a
	xor a
	ldh [hBGMapAddress], a
	ldh [hJoyDown], a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $90
	ldh [hWY], a
	call ApplyTilemapInVBlank

	ld a, $ff
	ld [wVariableWidthTextTile], a
	jp CrystalIntroSequence
; 6454
