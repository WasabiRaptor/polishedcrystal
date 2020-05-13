	dw 00146 ;national dex no

        db  90, 100,  90,  90, 125,  85
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIRE, FLYING ; type
        db 3 ; catch rate
        db 255 ; base exp
        dw 0 ; field capabilities

        INCBIN "gfx/pokemon/moltres/front.dimensions"
        db PRESSURE, PRESSURE     ; abilities
        db FLAME_BODY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
