
    dw 00028 ;national dex no

    db  75, 100, 110,  65,  45,  55
    evs  0,   0,   2,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GROUND, GROUND ; type
    db 90 ; catch rate
    db 158 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/sandslash/front.dimensions"
    db SAND_VEIL, SAND_VEIL     ; abilities
    db SAND_RUSH    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
