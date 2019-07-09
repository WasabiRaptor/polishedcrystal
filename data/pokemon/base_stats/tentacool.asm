	dw 000undefined ;national dex no
        
        db  40,  40,  35,  70,  50, 100
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, POISON ; type
        db 190 ; catch rate
        db 67 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/tentacool/front.dimensions"  
        db CLEAR_BODY, LIQUID_OOZE     ; abilities
        db RAIN_DISH    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_3 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end