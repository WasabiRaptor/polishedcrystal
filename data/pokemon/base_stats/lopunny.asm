
    dw 00428 ;national dex no

    db  65,  76,  84, 105,  54,  96
    evs  0,   0,   0,   2,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 60 ; catch rate
    db 168 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/lopunny/front.dimensions"
    db CUTE_CHARM, KLUTZ     ; abilities
    db LIMBER    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
