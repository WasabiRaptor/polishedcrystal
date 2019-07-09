	dw 00undefined ;national dex no
        
        db  43,  29,  31,  37,  29,  31
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, PSYCHIC ; type
        db 45 ; catch rate
        db 40 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cosmog/front.dimensions"  
        db UNAWARE, UNAWARE     ; abilities
        db UNAWARE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end