	dw 00416 ;national dex no
        
        db  70,  80, 102,  40,  80, 102
        evs  0,   0,   1,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, FLYING ; type
        db 45 ; catch rate
        db 166 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/vespiquen/front.dimensions"  
        db PRESSURE, PRESSURE     ; abilities
        db UNNERVE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end