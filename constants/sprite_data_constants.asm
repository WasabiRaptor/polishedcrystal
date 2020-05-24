; sprite types
	const_def 1
	const WALKING_SPRITE
	const STANDING_SPRITE
	const MON_SPRITE
	const BIG_GYARADOS_SPRITE

; sprite header fields
	const_def
	const SPRITEHEADER_ADDR_LO
	const SPRITEHEADER_ADDR_HI
	const SPRITEHEADER_BANK
	const SPRITEHEADER_TYPE
	const SPRITEHEADER_PALETTE
NUM_SPRITEHEADER_FIELDS EQU const_value

; sprite palettes
	const_def
	const OW_PLAYER   			 ; 0
	const OW_FOLLOWER  			 ; 1
	const OW_NPC1 				 ; 2
	const OW_NPC2 				 ; 3
	const OW_NPC3				 ; 4
	const OW_NPC4 				 ; 5
	const OW_NPC5   			 ; 6
	const OW_GRASS_OR_PORTRAIT   ; 7

	const PAL_NPC_RED    ; 0
	const PAL_NPC_BLUE   ; 1
	const PAL_NPC_GREEN  ; 2
	const PAL_NPC_BROWN  ; 3
	const PAL_NPC_PURPLE ; 4
	const PAL_NPC_5 	 ; 5
	const PAL_NPC_6   	 ; 6
	const PAL_NPC_7   	 ; 7

; for party menu icons
	const_def OW_NPC4
	const OW_GRAY   ; 5
	const OW_PINK   ; 6
	const OW_TEAL   ; 7
