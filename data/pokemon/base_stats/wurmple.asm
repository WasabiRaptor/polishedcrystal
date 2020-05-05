	dw 00265 ;national dex no

        db  45,  45,  35,  20,  20,  30
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db BUG, BUG ; type
        db 255 ; catch rate
        db 56 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/wurmple/front.dimensions"
        db SHIELD_DUST, SHIELD_DUST     ; abilities
        db RUN_AWAY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
