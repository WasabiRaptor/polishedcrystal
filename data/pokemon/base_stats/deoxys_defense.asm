	dw 00386 ;national dex no

        db  50, 150,  50, 150, 150,  50
        evs  0,   1,   0,   1,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, PSYCHIC ; type
        db 3 ; catch rate
        db 255 ; base exp
        dw 0 ; field capabilities

        INCBIN "gfx/pokemon/deoxys_normal/front.dimensions"
        db PRESSURE, PRESSURE     ; abilities
        db PRESSURE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end