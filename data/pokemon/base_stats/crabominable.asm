	dw 00740 ;national dex no
        
        db  97, 132,  77,  43,  62,  67
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIGHTING, ICE ; type
        db 60 ; catch rate
        db 167 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/crabominable/front.dimensions"  
        db HYPER_CUTTER, IRON_FIST     ; abilities
        db ANGER_POINT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_3, EGG_WATER_3 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end