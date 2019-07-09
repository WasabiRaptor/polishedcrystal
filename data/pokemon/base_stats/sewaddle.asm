	dw 00undefined ;national dex no
        
        db  45,  53,  70,  42,  40,  60
        evs  0,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, GRASS ; type
        db 255 ; catch rate
        db 62 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/sewaddle/front.dimensions"  
        db SWARM, CHLOROPHYLL     ; abilities
        db OVERCOAT    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end