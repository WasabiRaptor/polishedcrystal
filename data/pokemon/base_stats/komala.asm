	dw 00undefined ;national dex no
        
        db  65, 115,  65,  65,  75,  95
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 45 ; catch rate
        db 168 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/komala/front.dimensions"  
        db COMATOSE, COMATOSE     ; abilities
        db COMATOSE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end