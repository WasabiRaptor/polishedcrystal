
    dw 00120 ;national dex no

    db  30,  45,  55,  85,  70,  55
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 225 ; catch rate
    db 68 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/staryu/front.dimensions"
    db ILLUMINATE, NATURAL_CURE     ; abilities
    db ANALYTIC    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_WATER_3 ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
