	dw 00414 ;national dex no

        db  70,  94,  50,  66,  94,  50
        evs  0,   1,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db BUG, FLYING ; type
        db 45 ; catch rate
        db 148 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_MALE, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/mothim/front.dimensions"
        db SWARM, SWARM     ; abilities
        db TINTED_LENS    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
