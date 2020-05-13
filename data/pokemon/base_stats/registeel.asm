
    dw 00379 ;national dex no

    db  80,  75, 150,  50,  75, 150
    evs  0,   0,   2,   0,   0,   1
    ;   hp  atk  def  spd  sat  sdf

    db STEEL, STEEL ; type
    db 3 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/registeel/front.dimensions"
    db CLEAR_BODY, CLEAR_BODY     ; abilities
    db LIGHT_METAL    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
