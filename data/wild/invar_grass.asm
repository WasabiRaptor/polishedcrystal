; Johto Pokémon in grass

wild_mon: macro
	db \1, \2, GROUP_\2
endm

; Encounter area definition
; 1 - Map ID
; 2 - Minimum level
; 3 - Maximum level
; 4 - Encounter rates
wild_map: MACRO
	db GROUP_\1, MAP_\1, \2, \3, \4
ENDM

; new_wild_mon()
;
; Wild Pokemon encounter definition
; Constants in constants/wild_constants.asm
;
; 1 - Time of day [4] | Encounter chance [4]
; 2 - Species
; 3 (Opt) - Level offset/override flag [1] | Level offset/override [7]
; 4 (Opt) - Shiny override [1] | Ability override [2] | Form override [5]
; 5 (Opt) - AI settings
; 6 (Opt) - Item override
; Example:
; new_wild_mon DUSK_ONLY | WILD_20P, DEWOTT, 2, 0, WILD_TYPESMART | WILD_MOVESMART, EVERSTONE
new_wild_mon: macro
	db \1, \2, GROUP_\2
	if _NARG >= 3   ; 1
	db \3
	if _NARG >= 4   ; 2
	db \4
	if _NARG >= 5   ; 3
	db \5
	if _NARG >= 6   ; 4
	db \6
	else            ; 4
	db 0
	endc            ; 4
	else            ; 3
	db 0, 0
	endc            ; 3
	else            ; 2
	db 0, 0, 0
	endc            ; 2
	else            ; 1
	db 0, 0, 0, 0
	endc            ;1
endm

end_map: MACRO
	db -1
ENDM

OUEST_PATHWAY_GRASS::	; 478C
    wild_map OUEST_PATHWAY, 2, 10, COMMON_ALL
.eevee::
    new_wild_mon DAY_ENC | WILD_25P, EEVEE          ; 4791
.cyndaquil::
    new_wild_mon DAY_ENC | WILD_25P, CYNDAQUIL, 1   ; 4798
.vulpix::
    new_wild_mon ALL_TIMES | WILD_50P, VULPIX, WILD_LVL_OVER | 50;, ABILITY_1 | 1
    end_map







	db -1 ; end
