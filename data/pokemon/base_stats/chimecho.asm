
    dw 00358 ;national dex no

    db  75,  50,  80,  65,  95,  90
    evs  0,   0,   0,   0,   1,   1
    ;   hp  atk  def  spd  sat  sdf

    db PSYCHIC, PSYCHIC ; type
    db 45 ; catch rate
    db 159 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/chimecho/front.dimensions"
    db LEVITATE, LEVITATE     ; abilities
    db LEVITATE    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_AMORPHOUS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
