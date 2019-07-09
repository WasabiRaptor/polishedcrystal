	dw 00undefined ;national dex no
        
        db  91,  90,  72, 108,  90, 129
        evs  0,   0,   0,   0,   0,   3
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, FIGHTING ; type
        db 3 ; catch rate
        db 261 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 16 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/virizion/front.dimensions"  
        db JUSTIFIED, JUSTIFIED     ; abilities
        db JUSTIFIED    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end