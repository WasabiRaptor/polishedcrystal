	dw 00347 ;national dex no

        db  45,  95,  50,  75,  40,  50
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ROCK, BUG ; type
        db 45 ; catch rate
        db 71 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 6 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/anorith/front.dimensions"
        db BATTLE_ARMOR, BATTLE_ARMOR     ; abilities
        db SWIFT_SWIM    ; hidden ability
        db GROWTH_ERRATIC ; growth rate
        dn EGG_WATER_3 ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
