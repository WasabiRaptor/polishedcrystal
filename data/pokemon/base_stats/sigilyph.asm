	dw 00561 ;national dex no

        db  72,  58,  80,  97, 103,  80
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, FLYING ; type
        db 45 ; catch rate
        db 172 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/sigilyph/front.dimensions"
        db WONDER_SKIN, MAGIC_GUARD     ; abilities
        db TINTED_LENS    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
