	dw 00590 ;national dex no

        db  69,  55,  45,  15,  55,  55
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GRASS, POISON ; type
        db 190 ; catch rate
        db 59 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/foongus/front.dimensions"
        db EFFECT_SPORE, EFFECT_SPORE     ; abilities
        db REGENERATOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GRASS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
