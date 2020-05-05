	dw 00399 ;national dex no

        db  59,  45,  40,  31,  35,  40
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, NORMAL ; type
        db 255 ; catch rate
        db 50 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/bidoof/front.dimensions"
        db SIMPLE, UNAWARE     ; abilities
        db MOODY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
