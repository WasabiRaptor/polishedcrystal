
    dw 00621 ;national dex no

    db  77, 120,  90,  48,  60,  90
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db DRAGON, DRAGON ; type
    db 45 ; catch rate
    db 170 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/druddigon/front.dimensions"
    db ROUGH_SKIN, SHEER_FORCE     ; abilities
    db MOLD_BREAKER    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_MONSTER, EGG_DRAGON ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
