	dw 00708 ;national dex no

        db  43,  70,  48,  38,  50,  60
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GHOST, GRASS ; type
        db 120 ; catch rate
        db 62 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/phantump/front.dimensions"
        db NATURAL_CURE, FRISK     ; abilities
        db HARVEST    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GRASS, EGG_AMORPHOUS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
