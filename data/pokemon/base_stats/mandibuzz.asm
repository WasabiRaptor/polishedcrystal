	dw 00630 ;national dex no
        
        db 110,  65, 105,  80,  55,  95
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, FLYING ; type
        db 60 ; catch rate
        db 179 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/mandibuzz/front.dimensions"  
        db BIG_PECKS, OVERCOAT     ; abilities
        db WEAK_ARMOR    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end