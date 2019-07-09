	dw 00undefined ;national dex no
        
        db  80,  80,  90, 110, 110, 130
        evs  0,   0,   0,   0,   0,   3
        ;   hp  atk  def  spd  sat  sdf
        
        db DRAGON, PSYCHIC ; type
        db 3 ; catch rate
        db 270 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/latias/front.dimensions"  
        db LEVITATE, LEVITATE     ; abilities
        db LEVITATE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end