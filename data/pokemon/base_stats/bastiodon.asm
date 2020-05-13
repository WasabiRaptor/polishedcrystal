
    dw 00411 ;national dex no

    db  60,  52, 168,  30,  47, 138
    evs  0,   0,   2,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, STEEL ; type
    db 45 ; catch rate
    db 173 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/bastiodon/front.dimensions"
    db STURDY, STURDY     ; abilities
    db SOUNDPROOF    ; hidden ability
    db GROWTH_ERRATIC ; growth rate
    dn EGG_MONSTER ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
