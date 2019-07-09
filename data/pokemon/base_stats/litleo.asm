	dw 00undefined ;national dex no
        
        db  62,  50,  58,  72,  73,  54
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, NORMAL ; type
        db 220 ; catch rate
        db 74 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_87_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/litleo/front.dimensions"  
        db RIVALRY, UNNERVE     ; abilities
        db MOXIE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end