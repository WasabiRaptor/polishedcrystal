
    dw 00284 ;national dex no

    db  70,  60,  62,  80, 100,  82
    evs  0,   0,   0,   0,   1,   1
    ;   hp  atk  def  spd  sat  sdf

    db BUG, FLYING ; type
    db 75 ; catch rate
    db 159 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/masquerain/front.dimensions"
    db INTIMIDATE, INTIMIDATE     ; abilities
    db UNNERVE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
