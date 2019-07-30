	dw 00153 ;national dex no
        
        db  60,  62,  80,  60,  63,  80
        evs  0,   0,   1,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 45 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/bayleef/front.dimensions"  
        db OVERGROW, OVERGROW     ; abilities
        db LEAF_GUARD    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end