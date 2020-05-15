
    dw 00408 ;national dex no

    db  67, 125,  40,  58,  30,  30
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, ROCK ; type
    db 45 ; catch rate
    db 70 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/cranidos/front.dimensions"
    db MOLD_BREAKER, MOLD_BREAKER     ; abilities
    db SHEER_FORCE    ; hidden ability
    db GROWTH_ERRATIC ; growth rate
    dn EGG_MONSTER ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
