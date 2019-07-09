	dw 00undefined ;national dex no
        
        db  68,  64,  60, 117, 111,  60
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, FIRE ; type
        db 45 ; catch rate
        db 168 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/salazzle/front.dimensions"  
        db CORROSION, CORROSION     ; abilities
        db OBLIVIOUS    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end