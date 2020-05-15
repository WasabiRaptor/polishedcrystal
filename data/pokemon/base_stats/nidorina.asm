
    dw 00030 ;national dex no

    db  70,  62,  67,  56,  55,  55
    evs  2,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db POISON, POISON ; type
    db 120 ; catch rate
    db 128 ; base exp
	dw 0 ; field capabilities
    dn ALL_FEMALE, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/nidorina/front.dimensions"
    db POISON_POINT, RIVALRY     ; abilities
    db HUSTLE    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
