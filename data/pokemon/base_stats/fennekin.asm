	dw 00653 ;national dex no

        db  40,  45,  40,  60,  62,  60
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIRE, FIRE ; type
        db 45 ; catch rate
        db 61 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/fennekin/front.dimensions"
        db BLAZE, BLAZE     ; abilities
        db MAGICIAN    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
