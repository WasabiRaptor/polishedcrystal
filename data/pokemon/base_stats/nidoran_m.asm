
    dw 00032 ;national dex no

    db  46,  57,  40,  50,  40,  40
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db POISON, POISON ; type
    db 235 ; catch rate
    db 55 ; base exp
	dw 0 ; field capabilities
    dn ALL_MALE, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/nidoran_m/front.dimensions"
    db POISON_POINT, RIVALRY     ; abilities
    db HUSTLE    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_MONSTER, EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
