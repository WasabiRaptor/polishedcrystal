
    dw 00331 ;national dex no

    db  50,  85,  40,  35,  85,  40
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 190 ; catch rate
    db 67 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/cacnea/front.dimensions"
    db SAND_VEIL, SAND_VEIL     ; abilities
    db WATER_ABSORB    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_GRASS, EGG_HUMAN_LIKE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
