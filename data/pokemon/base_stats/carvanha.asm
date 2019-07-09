	dw 00undefined ;national dex no
        
        db  45,  90,  20,  65,  65,  20
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, DARK ; type
        db 225 ; catch rate
        db 61 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/carvanha/front.dimensions"  
        db ROUGH_SKIN, ROUGH_SKIN     ; abilities
        db SPEED_BOOST    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_2 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end