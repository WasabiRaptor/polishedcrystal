	dw 00undefined ;national dex no
        
        db  91, 129,  90, 108,  72,  90
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, FIGHTING ; type
        db 3 ; catch rate
        db 261 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 16 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/terrakion/front.dimensions"  
        db JUSTIFIED, JUSTIFIED     ; abilities
        db JUSTIFIED    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end