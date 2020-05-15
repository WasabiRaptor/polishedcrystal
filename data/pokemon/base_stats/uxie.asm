
    dw 00480 ;national dex no

    db  75,  75, 130,  95,  75, 130
    evs  0,   0,   2,   0,   0,   1
    ;   hp  atk  def  spd  sat  sdf

    db PSYCHIC, PSYCHIC ; type
    db 3 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/uxie/front.dimensions"
    db LEVITATE, LEVITATE     ; abilities
    db LEVITATE    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
