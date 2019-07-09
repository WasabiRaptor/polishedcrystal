	dw 000undefined ;national dex no
        
        db  81, 102,  77,  85,  85,  75
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, GROUND ; type
        db 45 ; catch rate
        db 227 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_MALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/nidoking/front.dimensions"  
        db POISON_POINT, RIVALRY     ; abilities
        db SHEER_FORCE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end