	dw 00368 ;national dex no

        db  55,  84, 105,  52, 114,  75
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 60 ; catch rate
        db 170 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gorebyss/front.dimensions"
        db SWIFT_SWIM, SWIFT_SWIM     ; abilities
        db HYDRATION    ; hidden ability
        db GROWTH_ERRATIC ; growth rate
        dn EGG_WATER_1 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
