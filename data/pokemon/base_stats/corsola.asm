	dw 00222 ;national dex no
        
        db  65,  55,  95,  35,  65,  95
        evs  0,   0,   1,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, ROCK ; type
        db 60 ; catch rate
        db 144 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/corsola/front.dimensions"  
        db HUSTLE, NATURAL_CURE     ; abilities
        db REGENERATOR    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_WATER_1, EGG_WATER_3 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end