	dw 00595 ;national dex no

        db  50,  47,  50,  65,  57,  50
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db BUG, ELECTRIC ; type
        db 190 ; catch rate
        db 64 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/joltik/front.dimensions"
        db COMPOUND_EYES, UNNERVE     ; abilities
        db SWARM    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
