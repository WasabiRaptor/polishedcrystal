
    dw 00296 ;national dex no

    db  72,  60,  30,  25,  20,  30
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIGHTING, FIGHTING ; type
    db 180 ; catch rate
    db 47 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_25, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/makuhita/front.dimensions"
    db THICK_FAT, GUTS     ; abilities
    db SHEER_FORCE    ; hidden ability
    db GROWTH_FLUCTUATING ; growth rate
    dn EGG_HUMAN_LIKE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
