	dw 00594 ;national dex no

        db 165,  75,  80,  65,  40,  45
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 75 ; catch rate
        db 165 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/alomomola/front.dimensions"
        db HEALER, HYDRATION     ; abilities
        db REGENERATOR    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_WATER_1, EGG_WATER_2 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
