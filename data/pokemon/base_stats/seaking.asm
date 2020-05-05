	dw 00119 ;national dex no

        db  80,  92,  65,  68,  65,  80
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 60 ; catch rate
        db 158 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/seaking/front.dimensions"
        db SWIFT_SWIM, WATER_VEIL     ; abilities
        db LIGHTNING_ROD    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_2 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
