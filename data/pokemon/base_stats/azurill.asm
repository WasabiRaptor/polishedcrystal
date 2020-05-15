
    dw 00298 ;national dex no

    db  50,  20,  40,  20,  20,  40
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FAIRY ; type
    db 150 ; catch rate
    db 38 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_75, 2 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/azurill/front.dimensions"
    db THICK_FAT, HUGE_POWER     ; abilities
    db SAP_SIPPER    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
