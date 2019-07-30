	dw 00754 ;national dex no
        
        db  70, 105,  90,  45,  80,  90
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 75 ; catch rate
        db 168 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/lurantis/front.dimensions"  
        db LEAF_GUARD, LEAF_GUARD     ; abilities
        db CONTRARY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GRASS, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end