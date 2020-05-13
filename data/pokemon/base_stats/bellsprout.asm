
    dw 00069 ;national dex no

    db  50,  75,  35,  40,  70,  30
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, POISON ; type
    db 255 ; catch rate
    db 60 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/bellsprout/front.dimensions"
    db CHLOROPHYLL, CHLOROPHYLL     ; abilities
    db GLUTTONY    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_GRASS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
