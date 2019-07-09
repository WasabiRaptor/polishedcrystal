	dw 00undefined ;national dex no
        
        db  45,  49,  65,  45,  49,  65
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 45 ; catch rate
        db 64 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/chikorita/front.dimensions"  
        db OVERGROW, OVERGROW     ; abilities
        db LEAF_GUARD    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end