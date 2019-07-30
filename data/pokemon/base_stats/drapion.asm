	dw 00452 ;national dex no
        
        db  70,  90, 110,  95,  60,  75
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, DARK ; type
        db 45 ; catch rate
        db 175 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/drapion/front.dimensions"  
        db BATTLE_ARMOR, SNIPER     ; abilities
        db KEEN_EYE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_BUG, EGG_WATER_3 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end