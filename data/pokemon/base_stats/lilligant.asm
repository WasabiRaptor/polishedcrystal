	dw 00undefined ;national dex no
        
        db  70,  60,  75,  90, 110,  75
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 75 ; catch rate
        db 168 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/lilligant/front.dimensions"  
        db CHLOROPHYLL, OWN_TEMPO     ; abilities
        db LEAF_GUARD    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end