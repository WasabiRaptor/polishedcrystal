	dw 00485 ;national dex no

        db  91,  90, 106,  77, 130, 106
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIRE, STEEL ; type
        db 3 ; catch rate
        db 270 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/heatran/front.dimensions"
        db FLASH_FIRE, FLASH_FIRE     ; abilities
        db FLAME_BODY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
