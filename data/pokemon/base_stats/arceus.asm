	dw 00undefined ;national dex no
        
        db 120, 120, 120, 120, 120, 120
        evs  3,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 3 ; catch rate
        db 324 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/arceus/front.dimensions"  
        db MULTITYPE, MULTITYPE     ; abilities
        db MULTITYPE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end