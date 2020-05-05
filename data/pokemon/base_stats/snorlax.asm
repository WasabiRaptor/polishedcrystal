	dw 00143 ;national dex no

        db 160, 110,  65,  30,  65, 110
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, NORMAL ; type
        db 25 ; catch rate
        db 189 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/snorlax/front.dimensions"
        db IMMUNITY, THICK_FAT     ; abilities
        db GLUTTONY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_MONSTER ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
