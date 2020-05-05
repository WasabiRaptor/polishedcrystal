	dw 00216 ;national dex no

        db  60,  80,  50,  40,  50,  50
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, NORMAL ; type
        db 120 ; catch rate
        db 66 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/teddiursa/front.dimensions"
        db PICKUP, QUICK_FEET     ; abilities
        db HONEY_GATHER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
