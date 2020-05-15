
    dw 00076 ;national dex no

    db  80, 120, 130,  45,  55,  65
    evs  0,   0,   3,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, GROUND ; type
    db 45 ; catch rate
    db 223 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/golem/front.dimensions"
    db ROCK_HEAD, STURDY     ; abilities
    db SAND_VEIL    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_MINERAL ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
