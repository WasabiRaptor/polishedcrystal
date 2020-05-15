
    dw 00191 ;national dex no

    db  30,  30,  30,  30,  30,  30
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 235 ; catch rate
    db 36 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/sunkern/front.dimensions"
    db CHLOROPHYLL, SOLAR_POWER     ; abilities
    db EARLY_BIRD    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_GRASS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
