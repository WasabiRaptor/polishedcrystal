	dw 00undefined ;national dex no
        
        db  20,  10, 230,   5,  10, 230
        evs  0,   0,   1,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, ROCK ; type
        db 190 ; catch rate
        db 177 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/shuckle/front.dimensions"  
        db STURDY, GLUTTONY     ; abilities
        db CONTRARY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end