; Johto Pokémon in grass

wild_mon: macro
	db \1, \2, GROUP_\2
endm

; Wild Pokemon encounter definition
; Constants in constants/wild_constants.asm
; 1 - Time of day [4] | Encounter chance [4]
; 2 - Species
; 3 - Level offset/override flag [1] | Level offset/override [7]
; 4 - Shiny override [1] | Ability override [2] | Form override [5]
; 5 - AI settings
; 6 - Item override
; Example:
; new_wild_mon DUSK_ONLY | WILD_20P, DEWOTT, 2, 0, WILD_TYPESMART | WILD_MOVESMART, EVERSTONE
new_wild_mon: macro
	db \1, \2, GROUP_\2, \3, \4, \5, \6
endm

	map_id OUEST_PATHWAY
	db 10 percent, 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/evening/nite
	; morn
	wild_mon 2, CYNDAQUIL
	wild_mon 2, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 2, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 3, CYNDAQUIL
	; day
	wild_mon 2, CYNDAQUIL
	wild_mon 2, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 2, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 3, CYNDAQUIL
	; evening
	wild_mon 2, MEOWTH
	wild_mon 2, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 2, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 3, MEOWTH
	; nite
	wild_mon 2, MEOWTH
	wild_mon 2, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 2, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 3, MEOWTH










	db -1 ; end
