
    dw 00218 ;national dex no

    db  40,  40,  40,  20,  70,  40
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, FIRE ; type
    db 190 ; catch rate
    db 50 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/slugma/front.dimensions"
    db MAGMA_ARMOR, FLAME_BODY     ; abilities
    db WEAK_ARMOR    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_AMORPHOUS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
