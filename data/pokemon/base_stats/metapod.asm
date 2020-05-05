	dw 00011 ;national dex no

        db  50,  20,  55,  30,  25,  25
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db BUG, BUG ; type
        db 120 ; catch rate
        db 72 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/metapod/front.dimensions"
        db SHED_SKIN, SHED_SKIN     ; abilities
        db SHED_SKIN    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
