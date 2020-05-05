	dw 00637 ;national dex no

        db  85,  60,  65, 100, 135, 105
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db BUG, FIRE ; type
        db 15 ; catch rate
        db 248 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/volcarona/front.dimensions"
        db FLAME_BODY, FLAME_BODY     ; abilities
        db SWARM    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_BUG ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
