
    dw 00348 ;national dex no

    db  75, 125, 100,  45,  70,  80
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, BUG ; type
    db 45 ; catch rate
    db 173 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/armaldo/front.dimensions"
    db BATTLE_ARMOR, BATTLE_ARMOR     ; abilities
    db SWIFT_SWIM    ; hidden ability
    db GROWTH_ERRATIC ; growth rate
    dn EGG_WATER_3 ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
