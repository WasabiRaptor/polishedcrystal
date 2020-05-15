
    dw 00376 ;national dex no

    db  80, 135, 130,  70,  95,  90
    evs  0,   0,   3,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db STEEL, PSYCHIC ; type
    db 3 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 8 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/metagross/front.dimensions"
    db CLEAR_BODY, CLEAR_BODY     ; abilities
    db LIGHT_METAL    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_MINERAL ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
