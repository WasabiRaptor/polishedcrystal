
    dw 00041 ;national dex no

    db  40,  45,  35,  55,  30,  40
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db POISON, FLYING ; type
    db 255 ; catch rate
    db 49 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/zubat/front.dimensions"
    db INNER_FOCUS, INNER_FOCUS     ; abilities
    db INFILTRATOR    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FLYING ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
