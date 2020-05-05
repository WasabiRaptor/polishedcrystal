	dw 00221 ;national dex no

        db 100, 100,  80,  50,  60,  60
        evs  1,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ICE, GROUND ; type
        db 75 ; catch rate
        db 158 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/piloswine/front.dimensions"
        db OBLIVIOUS, SNOW_CLOAK     ; abilities
        db THICK_FAT    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
