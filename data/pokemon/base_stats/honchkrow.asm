
    dw 00430 ;national dex no

    db 100, 125,  52,  71, 105,  52
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db DARK, FLYING ; type
    db 30 ; catch rate
    db 177 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/honchkrow/front.dimensions"
    db INSOMNIA, SUPER_LUCK     ; abilities
    db MOXIE    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FLYING ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
