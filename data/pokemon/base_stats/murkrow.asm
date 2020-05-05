	dw 00198 ;national dex no

        db  60,  85,  42,  91,  85,  42
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, FLYING ; type
        db 30 ; catch rate
        db 81 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/murkrow/front.dimensions"
        db INSOMNIA, SUPER_LUCK     ; abilities
        db PRANKSTER    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FLYING ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
