
    dw 00548 ;national dex no

    db  45,  35,  50,  30,  70,  50
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 190 ; catch rate
    db 56 ; base exp
	dw 0 ; field capabilities
    dn ALL_FEMALE, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/petilil/front.dimensions"
    db CHLOROPHYLL, OWN_TEMPO     ; abilities
    db LEAF_GUARD    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_GRASS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
