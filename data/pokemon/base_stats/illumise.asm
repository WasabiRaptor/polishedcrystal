
    dw 00314 ;national dex no

    db  65,  47,  75,  85,  73,  85
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, BUG ; type
    db 150 ; catch rate
    db 151 ; base exp
	dw 0 ; field capabilities
    dn ALL_FEMALE, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/illumise/front.dimensions"
    db OBLIVIOUS, TINTED_LENS     ; abilities
    db PRANKSTER    ; hidden ability
    db GROWTH_FLUCTUATING ; growth rate
    dn EGG_BUG, EGG_HUMAN_LIKE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
