	dw 00undefined ;national dex no
        
        db  86,  68,  72, 106, 109,  66
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, NORMAL ; type
        db 65 ; catch rate
        db 177 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_87_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pyroar/front.dimensions"  
        db RIVALRY, UNNERVE     ; abilities
        db MOXIE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end