
    dw 00180 ;national dex no

    db  70,  55,  55,  45,  80,  60
    evs  0,   0,   0,   0,   2,   0
    ;   hp  atk  def  spd  sat  sdf

    db ELECTRIC, ELECTRIC ; type
    db 120 ; catch rate
    db 128 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/flaaffy/front.dimensions"
    db STATIC, STATIC     ; abilities
    db PLUS    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_MONSTER, EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
