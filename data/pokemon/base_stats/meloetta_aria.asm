
    dw 00648 ;national dex no

    db 100,  77,  77,  90, 128, 128
    evs  0,   0,   0,   1,   1,   1
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, PSYCHIC ; type
    db 3 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/meloetta_aria/front.dimensions"
    db SERENE_GRACE, SERENE_GRACE     ; abilities
    db SERENE_GRACE    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
