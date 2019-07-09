	dw 00undefined ;national dex no
        
        db  40,  30,  30,  85,  55,  30
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, FLYING ; type
        db 190 ; catch rate
        db 54 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/wingull/front.dimensions"  
        db KEEN_EYE, HYDRATION     ; abilities
        db RAIN_DISH    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end