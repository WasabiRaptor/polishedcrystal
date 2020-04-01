	dw 00339 ;national dex no
        
        db  50,  48,  43,  60,  46,  41
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, GROUND ; type
        db 190 ; catch rate
        db 58 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/barboach/front.dimensions"  
        db OBLIVIOUS, ANTICIPATION     ; abilities
        db HYDRATION    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_2, EGG_WATER_2 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end