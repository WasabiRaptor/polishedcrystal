
    dw 00115 ;national dex no

    db 105,  95,  80,  90,  40,  80
    evs  2,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 45 ; catch rate
    db 172 ; base exp
	dw 0 ; field capabilities
    dn ALL_FEMALE, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/kangaskhan/front.dimensions"
    db EARLY_BIRD, SCRAPPY     ; abilities
    db INNER_FOCUS    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_MONSTER ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
