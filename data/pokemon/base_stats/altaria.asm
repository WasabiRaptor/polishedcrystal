
    dw 00334 ;national dex no

    db  75,  70,  90,  80,  70, 105
    evs  0,   0,   0,   0,   0,   2
    ;   hp  atk  def  spd  sat  sdf

    db DRAGON, FLYING ; type
    db 45 ; catch rate
    db 172 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/altaria/front.dimensions"
    db NATURAL_CURE, NATURAL_CURE     ; abilities
    db CLOUD_NINE    ; hidden ability
    db GROWTH_ERRATIC ; growth rate
    dn EGG_FLYING, EGG_DRAGON ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
