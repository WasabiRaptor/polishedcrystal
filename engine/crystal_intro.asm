Copyright_GFPresents: ; e4579
	ld de, MUSIC_NONE
	call PlayMusic
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
	ld b, CGB_GAMEFREAK_LOGO
	call GetCGBLayout
	farcall Copyright
	farcall BSOD
	call ApplyTilemapInVBlank
	ld c, 15
	call FadePalettes
	ld c, 80
	call DelayFrames
	call SetBlackPals
	ld c, 15
	call FadePalettes
	call ClearTileMap
	ld b, CGB_GAMEFREAK_LOGO
	call GetCGBLayout
	call SetPalettes
	call .GetGFLogoGFX
.joy_loop
	;call JoyTextDelay
	;ldh a, [hJoyLast]
	;and BUTTONS
	;jr nz, .pressed_button
	;ld a, [wJumptableIndex]
	;bit 7, a
	;jr nz, .finish
	;call PlaceGameFreakPresents
	;farcall PlaySpriteAnimations
	;call DelayFrame
	;jr .joy_loop

;.pressed_button
	;call .StopGamefreakAnim
	;scf
	;ret

.finish
	call .StopGamefreakAnim
	and a
	ret
; e45e8

.GetGFLogoGFX: ; e45e8
	ld de, GameFreakLogo
	ld hl, VTiles2
	lb bc, BANK(GameFreakLogo), $1c
	call Get1bpp

	ldh a, [rSVBK]
	push af
	ld a, $6
	ldh [rSVBK], a

	ld hl, IntroLogoGFX
	ld de, wDecompressScratch
	ld a, BANK(IntroLogoGFX)
	call Decompress

	ld hl, VTiles0
	ld de, wDecompressScratch
	lb bc, 1, 8 tiles
	call Request2bpp

	ld hl, VTiles1
	ld de, wDecompressScratch + $80 tiles
	lb bc, 1, 8 tiles
	call Request2bpp

	pop af
	ldh [rSVBK], a

	farcall ClearSpriteAnims
	depixel 10, 11, 4, 0
	ld a, SPRITE_ANIM_INDEX_GAMEFREAK_LOGO
	call _InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], $a0
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld [hl], $60
	ld hl, SPRITEANIMSTRUCT_0D
	add hl, bc
	ld [hl], $30
	xor a
	ld [wJumptableIndex], a
	ld [wIntroSceneFrameCounter], a
	ld [wcf65], a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $1
	ldh [hBGMapMode], a
	ld a, $90
	ldh [hWY], a
	lb de, %11100100, %11100100
	jp DmgToCgbObjPals
; e465e

.StopGamefreakAnim: ; e465e
	farcall ClearSpriteAnims
	call ClearTileMap
	call ClearSprites
	ld c, 16
	jp DelayFrames
; e4670

PlaceGameFreakPresents: ; e4670
	ld a, [wJumptableIndex]
	ld e, a
	ld d, 0
	ld hl, .dw
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; e467f

.dw ; e467f
	dw PlaceGameFreakPresents_0
	dw PlaceGameFreakPresents_1
	dw PlaceGameFreakPresents_2
	dw PlaceGameFreakPresents_3
; e4687

PlaceGameFreakPresents_AdvanceIndex: ; e4687
	ld hl, wJumptableIndex
	inc [hl]
	ret
; e468c

PlaceGameFreakPresents_0: ; e468c
	ret
; e468d

PlaceGameFreakPresents_1: ; e468d
	ld hl, wcf65
	ld a, [hl]
	cp $20
	jr nc, .PlaceGameFreak
	inc [hl]
	ret

.PlaceGameFreak:
	ld [hl], 0
	ld hl, .GAME_FREAK
	decoord 5, 10
	ld bc, .end - .GAME_FREAK
	rst CopyBytes
	call PlaceGameFreakPresents_AdvanceIndex
	ld de, SFX_GAME_FREAK_PRESENTS
	jp PlaySFX
; e46af

.GAME_FREAK:
	;  G  A  M  E   _  F  R  E  A  K
	db 0, 1, 2, 3, 13, 4, 5, 3, 1, 6
.end
	db "@"
; e46ba

PlaceGameFreakPresents_2: ; e46ba
	ld hl, wcf65
	ld a, [hl]
	cp $40
	jr nc, .place_presents
	inc [hl]
	ret

.place_presents
	ld [hl], 0
	ld hl, .presents
	decoord 7, 11
	ld bc, .end - .presents
	rst CopyBytes
	jp PlaceGameFreakPresents_AdvanceIndex
; e46d6

.presents
	db 7, 8, 9, 10, 11, 12
.end
	db "@"
; e46dd

PlaceGameFreakPresents_3: ; e46dd
	ld hl, wcf65
	ld a, [hl]
	cp $80
	jr nc, .finish
	inc [hl]
	ret

.finish
	ld hl, wJumptableIndex
	set 7, [hl]
	ret
; e46ed


GameFreakLogoJumper: ; e46ed (39:46ed)
	ld hl, SPRITEANIMSTRUCT_JUMPTABLE_INDEX
	add hl, bc
	ld e, [hl]
	ld d, 0
	ld hl, GameFreakLogoScenes
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

GameFreakLogoScenes: ; e46fd (39:46fd)
	dw GameFreakLogoScene1
	dw GameFreakLogoScene2
	dw GameFreakLogoScene3
	dw GameFreakLogoScene4
	dw GameFreakLogoScene5

GameFreakLogoScene1: ; e4707 (39:4707)
	ld hl, SPRITEANIMSTRUCT_JUMPTABLE_INDEX
	add hl, bc
	inc [hl]
	ret

GameFreakLogoScene2: ; e470d (39:470d)
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_e4747
	ld d, a
	ld hl, SPRITEANIMSTRUCT_0D
	add hl, bc
	ld a, [hl]
	and $3f
	cp $20
	jr nc, .asm_e4723
	add $20
.asm_e4723
	call Sine
	ld hl, SPRITEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, SPRITEANIMSTRUCT_0D
	add hl, bc
	ld a, [hl]
	dec [hl]
	and $1f
	ret nz
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld a, [hl]
	sub $30
	ld [hl], a
	ld de, SFX_DITTO_BOUNCE
	jp PlaySFX

.asm_e4747
	ld hl, SPRITEANIMSTRUCT_JUMPTABLE_INDEX
	add hl, bc
	inc [hl]
	ld hl, SPRITEANIMSTRUCT_0D
	add hl, bc
	ld [hl], $0
	ld de, SFX_DITTO_POP_UP
	jp PlaySFX

GameFreakLogoScene3: ; e4759 (39:4759)
	ld hl, SPRITEANIMSTRUCT_0D
	add hl, bc
	ld a, [hl]
	cp $20
	jr nc, .asm_e4764
	inc [hl]
	ret

.asm_e4764
	ld hl, SPRITEANIMSTRUCT_JUMPTABLE_INDEX
	add hl, bc
	inc [hl]
	ld hl, SPRITEANIMSTRUCT_0D
	add hl, bc
	ld [hl], $0
	ld de, SFX_DITTO_TRANSFORM
	jp PlaySFX

GameFreakLogoScene4: ; e4776 (39:4776)
	ld hl, SPRITEANIMSTRUCT_0D
	add hl, bc
	ld a, [hl]
	cp $40
	jr z, .asm_e47a3
	inc [hl]
	srl a
	srl a
	ld e, a
	ld d, $0
	ld hl, GameFreakLogoPalettes
	add hl, de
	add hl, de
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld a, [hli]
	ld [wOBPals palette 1 + 4], a
	ld a, [hli]
	ld [wOBPals palette 1 + 5], a
	pop af
	ldh [rSVBK], a
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

.asm_e47a3
	ld hl, SPRITEANIMSTRUCT_JUMPTABLE_INDEX
	add hl, bc
	inc [hl]
	call PlaceGameFreakPresents_AdvanceIndex
GameFreakLogoScene5: ; e47ab (39:47ab)
	ret
; e47ac (39:47ac)

GameFreakLogoPalettes: ; e47ac
; Ditto's color as it turns into the Game Freak logo.
; Fade from pink to orange.
; One color per step.
if !DEF(MONOCHROME)
	RGB 23, 12, 28
	RGB 23, 12, 27
	RGB 23, 13, 26
	RGB 23, 13, 24

	RGB 24, 14, 22
	RGB 24, 14, 20
	RGB 24, 15, 18
	RGB 24, 15, 16

	RGB 25, 16, 14
	RGB 25, 16, 12
	RGB 25, 17, 10
	RGB 25, 17, 08

	RGB 26, 18, 06
	RGB 26, 18, 04
	RGB 26, 19, 02
	RGB 26, 19, 00
else
rept 4
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_LIGHT
endr
endc
; e47cc

GameFreakLogo: ; e47cc
INCBIN "gfx/splash/logo.1bpp"
; e48ac

CrystalIntro: ; e48ac
	ld hl, rIE
	set LCD_STAT, [hl]
	ldh a, [rSVBK]
	push af
	ld a, 5
	ldh [rSVBK], a
	ldh a, [hInMenu]
	push af
	ldh a, [hVBlank]
	push af
	call .InitRAMAddrs
.loop ; e48bc
	call JoyTextDelay
	ldh a, [hJoyLast]
	and BUTTONS
	jr nz, .ShutOffMusic
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .done
	call IntroSceneJumper
	farcall PlaySpriteAnimations
	call DelayFrame
	jp .loop

.ShutOffMusic:
	ld de, MUSIC_NONE
	call PlayMusic

.done
	;call ClearBGPalettes
	;call ClearSprites
	;call ClearTileMap
	xor a

	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	pop af
	ldh [hVBlank], a
	pop af
	ldh [hInMenu], a
	pop af
	ldh [rSVBK], a
	ld hl, rIE
	res LCD_STAT, [hl]
	ret
; e4901

.InitRAMAddrs: ; e4901
	xor a
	ldh [hVBlank], a
	ld a, $1
	ldh [hInMenu], a
	xor a
	ldh [hMapAnims], a
	ld [wJumptableIndex], a
	ret
; e490f

IntroSceneJumper: ; e490f
	ld a, [wJumptableIndex]
	ld e, a
	ld d, 0
	ld hl, IntroScenes
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; e491e

IntroScenes: ; e491e (39:491e)
	dw BrassIntroSetup1
	dw IntroSceneSomethingSomethingPresents
	dw BrassIntroScrolldown1
	dw BrassIntroSetup2
	dw BrassIntroScrolldown2
	dw BrassIntroSetupZygarde
	dw IntroSceneZygardeRun
	;dw IntroScene9
	;dw IntroScene10
	dw IntroSceneEnd

NextIntroScene: ; e4956 (39:4956)
	ld hl, wJumptableIndex
	inc [hl]
	ret

BrassIntroSetup1:
	xor a
	ldh [hBGMapMode], a
	ld a, 1
	ldh [rVBK], a
	ld hl, IntroSuicuneRunGFX
	ld de, VTiles0 tile $00
	call Intro_DecompressRequest2bpp_255Tiles

	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals)
	ldh [rSVBK], a

	ld hl, BrassIntroPals
	ld de, wUnknBGPals
	ld bc, 16 palettes
	rst CopyBytes

	ld hl, BrassIntroPals
	ld de, wBGPals
	ld bc, 16 palettes
	rst CopyBytes

	pop af
	ldh [rSVBK], a
	xor a
	ldh [rVBK], a

	ld hl, BrassIntro2Tileset
	ld de, VTiles1
	call Intro_DecompressRequest2bpp_255Tiles

	ld hl, BrassIntro1Tileset
	ld de, VTiles2 tile $10
	call Intro_DecompressRequest2bpp_128Tiles

	call Intro_SetCGBPalUpdate

	call .setup
	jr NextIntroScene

.setup
	ld hl, BrassIntro1Attrmap
	push hl
	ld hl, BrassIntro1Tilemap
	jr BrassIntroLoadTileMapAttrMap

BrassIntroSetup2:
	xor a
	ldh [hBGMapMode], a
	call .setup
	jr NextIntroScene

.setup
	ld hl, BrassIntro2Attrmap
	push hl
	ld hl, BrassIntro2Tilemap
	;fallthrough
BrassIntroLoadTileMapAttrMap:
	xor a
	ldh [hBGMapMode], a
	ldh [rVBK], a
	call .loadTilemapOrAttrmap
	ld a, 1
	ldh [rVBK], a
	pop hl
	call .loadTilemapOrAttrmap
	xor a
	ldh [rVBK], a
	ret

.loadTilemapOrAttrmap
	ld de, VBGMap0
	ld c, BG_MAP_HEIGHT

.loop
	ld b, SCREEN_WIDTH
.loop1
.waitVblank
	ldh a, [rSTAT]
	and 2 ; we don't want mode 2 or 3
	jr nz, .waitVblank

	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .loop1
	push hl
	ld hl, BG_MAP_WIDTH - SCREEN_WIDTH
	add hl, de
	ld e, l
	ld d, h
	pop hl
	dec c
	jr nz, .loop
	ret

IntroSceneSomethingSomethingPresents:
	ld c, 30
	call DelayFrames
	jp NextIntroScene


BrassIntroScrolldown1:
	ld a, [hSCY]
	cp SCREEN_HEIGHT_PX
	jp z, NextIntroScene
	inc a
	ld [hSCY], a
	ret

BrassIntroScrolldown2:
	ld a, [hSCY]
	and a ; 0
	jp z, NextIntroScene
	inc a
	ld [hSCY], a
	ret

BrassIntroSetupZygarde:
	call Intro_ResetLYOverrides
	farcall InitTitleWater

	depixel 15, 27, 4, 0
	ld a, SPRITE_ANIM_INDEX_INTRO_SUICUNE
	call _InitSpriteAnimStruct
	ld a, $f0
	ld [wGlobalAnimXOffset], a
	xor a
	ld [wIntroSceneFrameCounter], a
	ld [wcf65], a
	jp NextIntroScene

RippleTitleWaterIntro:
	ld a, [wIntroSceneFrameCounter]
	and 3
	ret nz

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

IntroSceneZygardeRun: ; e4bd3 (39:4bd3)
; show Zygarde running across the screen while rippling water
	call RippleTitleWaterIntro

	ld hl, wIntroSceneFrameCounter
	ld a, [hl]
	inc [hl]
	cp $40
	jr z, .suicune_sound
	jr nc, .animate_suicune
	ret

.suicune_sound
	ld de, SFX_INTRO_SUICUNE_3
	call PlaySFX
.animate_suicune
	ld a, [wGlobalAnimXOffset]
	and a
	jr z, .finish
	sub $8
	ld [wGlobalAnimXOffset], a
	ret

.finish
	ld de, SFX_INTRO_SUICUNE_2
	call PlaySFX
	farcall DeinitializeAllSprites
	jp NextIntroScene

IntroScene9: ; e4c04 (39:4c04)
; Set up the next scene (same bg).
	xor a
	ldh [hLCDCPointer], a
	call ClearSprites
	hlcoord 0, 0, wAttrMap
	; first 12 rows have palette 1
	ld bc, 12 * SCREEN_WIDTH
	ld a, $1
	call ByteFill
	; middle 3 rows have palette 2
	ld bc, 3 * SCREEN_WIDTH
	ld a, $2
	call ByteFill
	; last three rows have palette 3
	ld bc, 3 * SCREEN_WIDTH
	ld a, $3
	call ByteFill
	ld a, $2
	ldh [hBGMapMode], a
	call DelayFrame
	call DelayFrame
	call DelayFrame
	ld a, $c ; $980c
	ldh [hBGMapAddress], a
	call DelayFrame
	call DelayFrame
	call DelayFrame
	xor a
	ldh [hBGMapMode], a
	ldh [hBGMapAddress], a
	ld [wGlobalAnimXOffset], a
	xor a
	ld [wIntroSceneFrameCounter], a
	jp NextIntroScene

IntroScene10: ; e4c4f (39:4c4f)
; Wooper and Pichu enter.
	call Intro_RustleGrass
	ld hl, wIntroSceneFrameCounter
	ld a, [hl]
	inc [hl]
	cp $c0
	jr z, .done
	cp $20
	jr z, .wooper
	cp $40
	jr z, .pichu
	ret

.pichu
	depixel 21, 16, 1, 0
	ld a, SPRITE_ANIM_INDEX_INTRO_PICHU
	call _InitSpriteAnimStruct
	ld de, SFX_INTRO_PICHU
	jp PlaySFX

.wooper
	depixel 22, 6
	ld a, SPRITE_ANIM_INDEX_INTRO_WOOPER
	call _InitSpriteAnimStruct
	ld de, SFX_INTRO_PICHU
	jp PlaySFX
.done
	jp NextIntroScene

IntroSceneEnd: ; e5152 (39:5152)
; Cut out when the music ends, and lead into the title screen.
	call RippleTitleWaterIntro

	ld hl, wIntroSceneFrameCounter
	ld a, [hl]
	and a
	jr z, .done
	inc [hl]
	ret ;just having it end right away now

.done
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

Intro_Scene24_ApplyPaletteFade: ; e5172 (39:5172)
; load the (a)th palette from .FadePals to all wBGPals
	ld hl, .FadePals
	add l
	ld l, a
	ld a, 0 ; not xor a; preserve carry flag?
	adc h
	ld h, a

	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a
	ld de, wBGPals
	ld b, 8 ; number of BG pals
.loop1
	push hl
	ld c, 8 ; number of bytes per pal
.loop2
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop2
	pop hl
	dec b
	jr nz, .loop1
	pop af
	ldh [rSVBK], a
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret
; e519c (39:519c)

.FadePals: ; e519c
; Fade to white.
if !DEF(MONOCHROME)
	RGB 24, 12, 09
	RGB 31, 31, 31
	RGB 12, 00, 31
	RGB 00, 00, 00

	RGB 31, 19, 05
	RGB 31, 31, 31
	RGB 15, 05, 31
	RGB 07, 07, 07

	RGB 31, 21, 09
	RGB 31, 31, 31
	RGB 18, 09, 31
	RGB 11, 11, 11

	RGB 31, 23, 13
	RGB 31, 31, 31
	RGB 21, 13, 31
	RGB 15, 15, 15

	RGB 31, 25, 17
	RGB 31, 31, 31
	RGB 25, 17, 31
	RGB 19, 19, 19

	RGB 31, 27, 21
	RGB 31, 31, 31
	RGB 27, 21, 31
	RGB 23, 23, 23

	RGB 31, 29, 25
	RGB 31, 31, 31
	RGB 29, 26, 31
	RGB 27, 27, 27

	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 31, 31, 31
else
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_BLACK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_LIGHT

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_LIGHT

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_WHITE
endc
; e51dc

CrystalIntro_InitUnownAnim: ; e51dc (39:51dc)
	push de
	ld a, SPRITE_ANIM_INDEX_INTRO_UNOWN
	call _InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld [hl], $8
	ld a, SPRITE_ANIM_FRAMESET_INTRO_UNOWN_4
	call ReinitSpriteAnimFrame
	pop de

	push de
	ld a, SPRITE_ANIM_INDEX_INTRO_UNOWN
	call _InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld [hl], $18
	ld a, SPRITE_ANIM_FRAMESET_INTRO_UNOWN_3
	call ReinitSpriteAnimFrame
	pop de

	push de
	ld a, SPRITE_ANIM_INDEX_INTRO_UNOWN
	call _InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld [hl], $28
	ld a, SPRITE_ANIM_FRAMESET_INTRO_UNOWN_1
	call ReinitSpriteAnimFrame
	pop de

	ld a, SPRITE_ANIM_INDEX_INTRO_UNOWN
	call _InitSpriteAnimStruct
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld [hl], $38
	ld a, SPRITE_ANIM_FRAMESET_INTRO_UNOWN_2
	jp ReinitSpriteAnimFrame

CrystalIntro_UnownFade: ; e5223 (39:5223)
	add a
	add a
	add a
	ld e, a
	ld d, $0
	ld hl, wBGPals
	add hl, de
	inc hl
	inc hl
	ld a, [wcf65]
	and $3f
	cp $1f
	jr z, .okay
	jr c, .okay
	ld c, a
	ld a, $3f
	sub c
.okay

	ld c, a
	ld b, $0
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a

	push hl
	push bc
	ld hl, wBGPals
if !DEF(MONOCHROME)
	ld bc, 8 palettes
	xor a
	call ByteFill
else
	ld b, (8 palettes) / 2
.mono_loop
	ld a, PAL_MONOCHROME_BLACK % $100
	ld [hli], a
	ld a, PAL_MONOCHROME_BLACK / $100
	ld [hli], a
	dec b
	jr nz, .mono_loop
endc
	pop bc
	pop hl

	push hl
	ld hl, .BWFade
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a

	push hl
	ld hl, .BlackLBlueFade
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a

	push hl
	ld hl, .BlackBlueFade
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a

	pop af
	ldh [rSVBK], a
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret
; e5288 (39:5288)

.BWFade: ; e5288
; Fade between black and white.
if !DEF(MONOCHROME)
hue = 0
rept 32
	RGB hue, hue, hue
hue = hue + 1
endr
else
rept 8
	RGB_MONOCHROME_BLACK
endr
rept 8
	RGB_MONOCHROME_DARK
endr
rept 8
	RGB_MONOCHROME_LIGHT
endr
rept 8
	RGB_MONOCHROME_WHITE
endr
endc
; e52c8

.BlackLBlueFade: ; e52c8
; Fade between black and light blue.
if !DEF(MONOCHROME)
hue = 0
rept 32
	RGB 0, hue / 2, hue
hue = hue + 1
endr
else
rept 8
	RGB_MONOCHROME_BLACK
endr
rept 8
	RGB_MONOCHROME_DARK
endr
rept 8
	RGB_MONOCHROME_LIGHT
endr
rept 8
	RGB_MONOCHROME_LIGHT
endr
endc
; e5308

.BlackBlueFade: ; e5308
; Fade between black and blue.
if !DEF(MONOCHROME)
hue = 0
rept 32
	RGB 0, 0, hue
hue = hue + 1
endr
else
rept 8
	RGB_MONOCHROME_BLACK
endr
rept 8
	RGB_MONOCHROME_DARK
endr
rept 8
	RGB_MONOCHROME_DARK
endr
rept 8
	RGB_MONOCHROME_DARK
endr
endc
; e5348


Intro_FadeUnownWordPals: ; e539d (39:539d)
	add a
	add a
	add a
	ld e, a
	ld d, $0
	ld hl, wBGPals
	add hl, de
rept 4
	inc hl
endr
	ld a, [wcf65]
	add a
	ld c, a
	ld b, $0

	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a

	push hl
	ld hl, .FastFadePalettes
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a

	push hl
	ld hl, .SlowFadePalettes
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a

	pop af
	ldh [rSVBK], a
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret
; e53db (39:53db)

.FastFadePalettes: ; e53db
if !DEF(MONOCHROME)
hue = 31
rept 8
	RGB hue, hue, hue
hue = hue + -1
	RGB hue, hue, hue
hue = hue + -2
endr
else
rept 4
	RGB_MONOCHROME_WHITE
endr
rept 4
	RGB_MONOCHROME_LIGHT
endr
rept 4
	RGB_MONOCHROME_DARK
endr
rept 4
	RGB_MONOCHROME_BLACK
endr
endc
; e53fb

.SlowFadePalettes: ; e53fb
if !DEF(MONOCHROME)
hue = 31
rept 16
	RGB hue, hue, hue
hue = hue + -1
endr
else
rept 8
	RGB_MONOCHROME_WHITE
endr
rept 8
	RGB_MONOCHROME_DARK
endr
endc
; e541b

Intro_LoadTilemap: ; e541b (39:541b)
	ldh a, [rSVBK]
	push af
	ld a, BANK(wScratchTileMap)
	ldh [rSVBK], a

	ld hl, wScratchTileMap
	decoord 0, 0
	ld b, SCREEN_HEIGHT
.row
	ld c, SCREEN_WIDTH
.col
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .col
	; add hl, $20 - SCREEN_WIDTH
	ld a, $20 - SCREEN_WIDTH
	add l
	ld l, a
	ld a, 0 ; not xor a; preserve carry flag?
	adc h
	ld h, a
	dec b
	jr nz, .row

	pop af
	ldh [rSVBK], a
	ret

Intro_Scene16_AnimateSuicune: ; e5441 (39:5441)
	ld a, [wIntroSceneFrameCounter]
	and $3
	jr z, Intro_ColoredSuicuneFrameSwap
	cp $3
	jr z, .PrepareForSuicuneSwap
	ret

.PrepareForSuicuneSwap:
	xor a
	ldh [hBGMapMode], a
	ret

Intro_ColoredSuicuneFrameSwap: ; e5451 (39:5451)
	hlcoord 0, 0
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
.loop
	ld a, [hl]
	and a
	jr z, .skip
	cp $80
	jr nc, .skip
	xor $8
	ld [hl], a
.skip
	inc hl
	dec bc
	ld a, c
	or b
	jr nz, .loop
	;ld a, $1
	;ldh [hBGMapMode], a
	ret

Intro_RustleGrass: ; e546d (39:546d)
	ld a, [wIntroSceneFrameCounter]
	cp 36
	ret nc
	and $c
	srl a
	ld e, a
	ld d, $0
	ld hl, .RustlingGrassPointers
	add hl, de
	ld a, [hli]
	ldh [hRequestedVTileSource], a
	ld a, [hli]
	ldh [hRequestedVTileSource + 1], a
	ld a, (VTiles2 tile $09) % $100
	ldh [hRequestedVTileDest], a
	ld a, (VTiles2 tile $09) / $100
	ldh [hRequestedVTileDest + 1], a
	ld a, 4
	ldh [hRequested2bpp], a
	ret
; e5496 (39:5496)

.RustlingGrassPointers: ; e5496
	dw IntroGrass1GFX
	dw IntroGrass2GFX
	dw IntroGrass3GFX
	dw IntroGrass2GFX
; e549e

Intro_SetCGBPalUpdate: ; e549e (39:549e)
	ld a, $1
	ldh [hCGBPalUpdate], a
	ret

Intro_ClearBGPals: ; e54a3 (39:54a3)
	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a

; Fill wBGPals and wOBPals with $0000 (black)
	ld hl, wBGPals
if !DEF(MONOCHROME)
	ld bc, 16 palettes
	xor a
	call ByteFill
else
	ld b, (16 palettes) / 2
.mono_loop
	ld a, PAL_MONOCHROME_BLACK % $100
	ld [hli], a
	ld a, PAL_MONOCHROME_BLACK / $100
	ld [hli], a
	dec b
	jr nz, .mono_loop
endc

	pop af
	ldh [rSVBK], a
	ld a, $1
	ldh [hCGBPalUpdate], a
	ld c, 64
	jp DelayFrames

Intro_DecompressRequest2bpp_64Tiles: ; e54fa (39:54fa)
	lb bc, 1, 64
	jr Intro_DecompressRequest2bpp

Intro_DecompressRequest2bpp_128Tiles: ; e54c2 (39:54c2)
	lb bc, 1, 128
	jr Intro_DecompressRequest2bpp

Intro_DecompressRequest2bpp_255Tiles: ; e54de (39:54de)
	lb bc, 1, 255
Intro_DecompressRequest2bpp:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a

	push bc
	push de
	ld de, wDecompressScratch
	call Decompress
	pop hl
	pop bc

	ld de, wDecompressScratch
	call Request2bpp

	pop af
	ldh [rSVBK], a
	ret

Intro_ResetLYOverrides: ; e5516 (39:5516)
	ldh a, [rSVBK]
	push af
	ld a, BANK(wLYOverrides)
	ldh [rSVBK], a

	ld hl, wLYOverrides
	ld bc, wLYOverridesEnd - wLYOverrides
	xor a
	call ByteFill

	pop af
	ldh [rSVBK], a
	ld a, rSCX - $ff00
	ldh [hLCDCPointer], a
	ret

Intro_PerspectiveScrollBG: ; e552f (39:552f)
	ldh a, [rSVBK]
	push af
	ld a, BANK(wLYOverrides)
	ldh [rSVBK], a
	; Scroll the grass every frame.
	; Scroll the trees every other frame and at half speed.
	; This creates an illusion of perspective.
	ld a, [wIntroSceneFrameCounter]
	and $1
	jr z, .skip
	; trees in the back
	ld hl, wLYOverrides
	ld a, [hl]
	inc a
	ld bc, $5f
	call ByteFill
.skip
	; grass in the front
	ld hl, wLYOverrides + $5f
	ld a, [hl]
	inc a
	inc a
	ld bc, $31
	call ByteFill
	ld a, [wLYOverrides + 0]
	ldh [hSCX], a
	pop af
	ldh [rSVBK], a
	ret

BrassTitleScreenSetup::
	xor a
	ldh [hBGMapMode], a
	ldh [hSCX], a
	ldh [hSCY], a

	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals)
	ldh [rSVBK], a

	ld hl, BrassIntroPals
	ld de, wUnknBGPals
	ld bc, 16 palettes
	rst CopyBytes

	ld hl, BrassIntroPals
	ld de, wBGPals
	ld bc, 16 palettes
	rst CopyBytes

	pop af
	ldh [rSVBK], a

	call Intro_SetCGBPalUpdate

	ld hl, BrassIntro2Tileset
	ld de, VTiles1
	call Intro_DecompressRequest2bpp_255Tiles

	ld hl, BrassIntro1Tileset
	ld de, VTiles2 tile $10
	call Intro_DecompressRequest2bpp_128Tiles

	decoord 0, 0, wAttrMap
	ld hl, BrassIntro2Attrmap
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	rst CopyBytes
	decoord 0, 0
	ld hl, BrassIntro2Tilemap
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	rst CopyBytes
	jp ApplyAttrAndTilemapInVBlank

BrassIntroPals:
BrassIntroBGPals:
; palette 0
	RGB 03, 08, 10
	RGB 05, 05, 09
	RGB 03, 04, 06
	RGB 03, 03, 05
; palette 1
	RGB 03, 08, 10
	RGB 05, 05, 09
	RGB 03, 04, 06
	RGB 02, 03, 12
; palette 2
	RGB 15, 16, 25
	RGB 03, 04, 15
	RGB 03, 04, 06
	RGB 02, 03, 12
; palette 3
	RGB 05, 10, 11
	RGB 03, 08, 10
	RGB 03, 04, 06
	RGB 02, 03, 12
; palette 4
	RGB 31, 31, 31
	RGB 00, 00, 08
	RGB 00, 00, 06
	RGB 00, 00, 00
; palette 5
	RGB 05, 05, 09
	RGB 03, 03, 05
	RGB 00, 00, 08
	RGB 00, 00, 00
; palette 6
	RGB 31, 31, 31
	RGB 15, 16, 25
	RGB 03, 04, 15
	RGB 00, 00, 00
; palette 7
	RGB 03, 08, 10
	RGB 02, 06, 07
	RGB 00, 00, 00
	RGB 00, 00, 00

BrassIntroOBPals:
SuicuneRunPal:
	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 12,  0, 31
	RGB  0,  0,  0

	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 12,  0, 31
	RGB  0,  0,  0

	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 12,  0, 31
	RGB  0,  0,  0

	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 12,  0, 31
	RGB  0,  0,  0

	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 12,  0, 31
	RGB  0,  0,  0

	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 12,  0, 31
	RGB  0,  0,  0

	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 12,  0, 31
	RGB  0,  0,  0

	RGB 31, 31, 31
	RGB 31, 31, 31
	RGB 12,  0, 31
	RGB  0,  0,  0


IntroSuicuneRunGFX: ; e555d
INCBIN "gfx/intro/suicune_run.2bpp.lz"
; e592d

IntroPichuWooperGFX: ; e592d
INCBIN "gfx/intro/pichu_wooper.2bpp.lz"
; e5c7d

IntroGrass1GFX: ; e799d
INCBIN "gfx/intro/grass1.2bpp"
IntroGrass2GFX: ; e79dd
INCBIN "gfx/intro/grass2.2bpp"
IntroGrass3GFX: ; e7a1d
INCBIN "gfx/intro/grass3.2bpp"
IntroGrass4GFX: ; e7a5d
INCBIN "gfx/intro/grass4.2bpp"

IntroLogoGFX: ; 109407
INCBIN "gfx/intro/logo.2bpp.lz"

BrassIntro1Tileset:
INCBIN "gfx/intro/brass_intro1_tileset.2bpp.lz"

BrassIntro2Tileset:
INCBIN "gfx/intro/brass_intro2_tileset.2bpp.lz"

BrassIntro1Tilemap:
INCBIN "gfx/intro/brass_intro1_tileset.tilemap"

BrassIntro2Tilemap:
INCBIN "gfx/intro/brass_intro2_tileset.tilemap"

BrassIntro1Attrmap:
INCBIN "gfx/intro/brass_intro1_tileset.attrmap"

BrassIntro2Attrmap:
INCBIN "gfx/intro/brass_intro2_tileset.attrmap"
