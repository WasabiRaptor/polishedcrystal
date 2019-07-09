	dw 00undefined ;national dex no
        
        db  65, 125, 100,  85,  55,  70
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, BUG ; type
        db 45 ; catch rate
        db 175 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pinsir/front.dimensions"  
        db HYPER_CUTTER, MOLD_BREAKER     ; abilities
        db MOXIE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end