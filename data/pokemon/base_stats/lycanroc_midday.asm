
    dw 00745 ;national dex no

    db  75, 115,  65, 112,  55,  65
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, ROCK ; type
    db 90 ; catch rate
    db 170 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/lycanroc_midday/front.dimensions"
    db KEEN_EYE, SAND_RUSH     ; abilities
    db STEADFAST    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
