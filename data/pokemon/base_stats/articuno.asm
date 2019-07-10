	dw 00144 ;national dex no
        
        db  90,  85, 100,  85,  95, 125
        evs  0,   0,   0,   0,   0,   3
        ;   hp  atk  def  spd  sat  sdf
        
        db ICE, FLYING ; type
        db 3 ; catch rate
        db 261 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 16 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/articuno/front.dimensions"  
        db PRESSURE, PRESSURE     ; abilities
        db SNOW_CLOAK    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end