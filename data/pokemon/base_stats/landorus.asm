	dw 00645 ;national dex no

        db  89, 125,  90, 101, 115,  80
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db GROUND, FLYING ; type
        db 3 ; catch rate
        db 255 ; base exp
        dw 0 ; field capabilities
        dn ALL_MALE, 15 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/landorus/front.dimensions"
        db SAND_FORCE, SAND_FORCE     ; abilities
        db SHEER_FORCE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end