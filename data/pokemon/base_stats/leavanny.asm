	dw 00undefined ;national dex no
        
        db  75, 103,  80,  92,  70,  80
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, GRASS ; type
        db 45 ; catch rate
        db 225 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/leavanny/front.dimensions"  
        db SWARM, CHLOROPHYLL     ; abilities
        db OVERCOAT    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end