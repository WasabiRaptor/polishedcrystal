	dw 00628 ;national dex no
        
        db 100, 123,  75,  80,  57,  75
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 60 ; catch rate
        db 179 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_MALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/braviary/front.dimensions"  
        db KEEN_EYE, SHEER_FORCE     ; abilities
        db DEFIANT    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FLYING, EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end