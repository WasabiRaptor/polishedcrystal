	dw 00340 ;national dex no
        
        db 110,  78,  73,  60,  76,  71
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, GROUND ; type
        db 75 ; catch rate
        db 164 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/whiscash/front.dimensions"  
        db OBLIVIOUS, ANTICIPATION     ; abilities
        db HYDRATION    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_2 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end