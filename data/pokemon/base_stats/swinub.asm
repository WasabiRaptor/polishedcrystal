	dw 00220 ;national dex no

        db  50,  50,  40,  50,  30,  30
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ICE, GROUND ; type
        db 225 ; catch rate
        db 50 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/swinub/front.dimensions"
        db OBLIVIOUS, SNOW_CLOAK     ; abilities
        db THICK_FAT    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
