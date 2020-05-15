
    dw 00192 ;national dex no

    db  75,  75,  55,  30, 105,  85
    evs  0,   0,   0,   0,   2,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 120 ; catch rate
    db 149 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/sunflora/front.dimensions"
    db CHLOROPHYLL, SOLAR_POWER     ; abilities
    db EARLY_BIRD    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_GRASS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
