
    dw 00148 ;national dex no

    db  61,  84,  65,  70,  70,  70
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db DRAGON, DRAGON ; type
    db 45 ; catch rate
    db 147 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 8 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/dragonair/front.dimensions"
    db SHED_SKIN, SHED_SKIN     ; abilities
    db MARVEL_SCALE    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_WATER_1, EGG_DRAGON ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
