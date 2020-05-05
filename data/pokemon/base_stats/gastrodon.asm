	dw 00423 ;national dex no

        db 111,  83,  68,  39,  92,  82
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, GROUND ; type
        db 75 ; catch rate
        db 166 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gastrodon/front.dimensions"
        db STICKY_HOLD, STORM_DRAIN     ; abilities
        db SAND_FORCE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_AMORPHOUS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
