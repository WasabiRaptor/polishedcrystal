
    dw 00140 ;national dex no

    db  30,  80,  90,  55,  55,  45
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, WATER ; type
    db 45 ; catch rate
    db 71 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/kabuto/front.dimensions"
    db SWIFT_SWIM, BATTLE_ARMOR     ; abilities
    db WEAK_ARMOR    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_WATER_3 ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
