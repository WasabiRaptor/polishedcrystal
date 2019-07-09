	dw 00undefined ;national dex no
        
        db  75, 125,  70, 115, 125,  70
        evs  0,   2,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, PSYCHIC ; type
        db 3 ; catch rate
        db 261 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 16 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/azelf/front.dimensions"  
        db LEVITATE, LEVITATE     ; abilities
        db LEVITATE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end