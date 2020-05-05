	dw 00473 ;national dex no

        db 110, 130,  80,  80,  70,  60
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ICE, GROUND ; type
        db 50 ; catch rate
        db 239 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/mamoswine/front.dimensions"
        db OBLIVIOUS, SNOW_CLOAK     ; abilities
        db THICK_FAT    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
