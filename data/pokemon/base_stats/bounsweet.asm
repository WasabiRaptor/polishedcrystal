	dw 00761 ;national dex no
        
        db  42,  30,  38,  32,  30,  38
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 235 ; catch rate
        db 42 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/bounsweet/front.dimensions"  
        db LEAF_GUARD, OBLIVIOUS     ; abilities
        db SWEET_VEIL    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_GRASS, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end