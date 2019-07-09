	dw 00undefined ;national dex no
        
        db 100, 134, 110,  61,  95, 100
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, DARK ; type
        db 45 ; catch rate
        db 270 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/tyranitar/front.dimensions"  
        db SAND_STREAM, SAND_STREAM     ; abilities
        db UNNERVE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_MONSTER ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end