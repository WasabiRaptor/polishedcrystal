
    dw 00564 ;national dex no

    db  54,  78, 103,  22,  53,  45
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, ROCK ; type
    db 45 ; catch rate
    db 71 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/tirtouga/front.dimensions"
    db SOLID_ROCK, STURDY     ; abilities
    db SWIFT_SWIM    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_WATER_3 ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
