	dw 00415 ;national dex no
        
        db  30,  30,  42,  70,  30,  42
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, FLYING ; type
        db 120 ; catch rate
        db 49 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/combee/front.dimensions"  
        db HONEY_GATHER, HONEY_GATHER     ; abilities
        db HUSTLE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_BUG, EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end