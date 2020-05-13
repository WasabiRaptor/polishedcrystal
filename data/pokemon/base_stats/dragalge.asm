
    dw 00691 ;national dex no

    db  65,  75,  90,  44,  97, 123
    evs  0,   0,   0,   0,   0,   2
    ;   hp  atk  def  spd  sat  sdf

    db POISON, DRAGON ; type
    db 55 ; catch rate
    db 173 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/dragalge/front.dimensions"
    db POISON_POINT, POISON_TOUCH     ; abilities
    db ADAPTABILITY    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_DRAGON ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
