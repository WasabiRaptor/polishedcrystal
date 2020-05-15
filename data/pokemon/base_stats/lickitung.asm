
    dw 00108 ;national dex no

    db  90,  55,  75,  30,  60,  75
    evs  2,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 45 ; catch rate
    db 77 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/lickitung/front.dimensions"
    db OWN_TEMPO, OBLIVIOUS     ; abilities
    db CLOUD_NINE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_MONSTER ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
