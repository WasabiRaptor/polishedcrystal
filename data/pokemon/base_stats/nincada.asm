	dw 00290 ;national dex no

        db  31,  45,  90,  40,  30,  30
        evs  0,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db BUG, GROUND ; type
        db 255 ; catch rate
        db 53 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/nincada/front.dimensions"
        db COMPOUND_EYES, COMPOUND_EYES     ; abilities
        db RUN_AWAY    ; hidden ability
        db GROWTH_ERRATIC ; growth rate
        dn EGG_BUG ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
