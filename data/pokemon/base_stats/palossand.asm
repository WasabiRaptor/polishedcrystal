	dw 00770 ;national dex no

        db  85,  75, 110,  35, 100,  75
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GHOST, GROUND ; type
        db 60 ; catch rate
        db 168 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/palossand/front.dimensions"
        db WATER_COMPACTION, WATER_COMPACTION     ; abilities
        db SAND_VEIL    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_AMORPHOUS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
