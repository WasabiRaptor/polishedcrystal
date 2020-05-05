	dw 00664 ;national dex no

        db  38,  35,  40,  35,  27,  25
        evs  0,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db BUG, BUG ; type
        db 255 ; catch rate
        db 40 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/scatterbug/front.dimensions"
        db SHIELD_DUST, COMPOUND_EYES     ; abilities
        db FRIEND_GUARD    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
