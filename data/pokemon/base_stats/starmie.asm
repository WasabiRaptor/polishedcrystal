
    dw 00121 ;national dex no

    db  60,  75,  85, 115, 100,  85
    evs  0,   0,   0,   2,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, PSYCHIC ; type
    db 60 ; catch rate
    db 182 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/starmie/front.dimensions"
    db ILLUMINATE, NATURAL_CURE     ; abilities
    db ANALYTIC    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_WATER_3 ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
