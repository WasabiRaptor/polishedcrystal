
    dw 00744 ;national dex no

    db  45,  65,  40,  60,  30,  40
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, ROCK ; type
    db 190 ; catch rate
    db 56 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/rockruff/front.dimensions"
    db KEEN_EYE, VITAL_SPIRIT     ; abilities
    db STEADFAST    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
