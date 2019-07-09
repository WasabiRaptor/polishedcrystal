	dw 00undefined ;national dex no
        
        db  55,  45,  45,  15,  25,  25
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, GROUND ; type
        db 255 ; catch rate
        db 42 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/wooper/front.dimensions"  
        db DAMP, WATER_ABSORB     ; abilities
        db UNAWARE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end