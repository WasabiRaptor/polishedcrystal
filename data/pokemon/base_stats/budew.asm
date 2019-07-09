	dw 00undefined ;national dex no
        
        db  40,  30,  35,  55,  50,  70
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, POISON ; type
        db 255 ; catch rate
        db 56 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/budew/front.dimensions"  
        db NATURAL_CURE, POISON_POINT     ; abilities
        db LEAF_GUARD    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end