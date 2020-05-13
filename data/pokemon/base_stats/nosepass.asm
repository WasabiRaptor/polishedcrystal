
    dw 00299 ;national dex no

    db  30,  45, 135,  30,  45,  90
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, ROCK ; type
    db 255 ; catch rate
    db 75 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/nosepass/front.dimensions"
    db STURDY, MAGNET_PULL     ; abilities
    db SAND_FORCE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_MINERAL ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
