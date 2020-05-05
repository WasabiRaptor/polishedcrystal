	dw 00139 ;national dex no

        db  70,  60, 125,  55, 115,  70
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ROCK, WATER ; type
        db 45 ; catch rate
        db 173 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 6 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/omastar/front.dimensions"
        db SWIFT_SWIM, SHELL_ARMOR     ; abilities
        db WEAK_ARMOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_WATER_3 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
