	dw 00279 ;national dex no
        
        db  60,  50, 100,  65,  95,  70
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, FLYING ; type
        db 45 ; catch rate
        db 154 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pelipper/front.dimensions"  
        db KEEN_EYE, DRIZZLE     ; abilities
        db RAIN_DISH    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end