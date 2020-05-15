
    dw 00463 ;national dex no

    db 110,  85,  95,  50,  80,  95
    evs  3,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 30 ; catch rate
    db 180 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/lickilicky/front.dimensions"
    db OWN_TEMPO, OBLIVIOUS     ; abilities
    db CLOUD_NINE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_MONSTER ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
