	dw 000undefined ;national dex no
        
        db  55,  95, 115,  35,  45,  45
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, GROUND ; type
        db 120 ; catch rate
        db 137 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/graveler/front.dimensions"  
        db ROCK_HEAD, STURDY     ; abilities
        db SAND_VEIL    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end