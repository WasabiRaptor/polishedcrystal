	dw 00undefined ;national dex no
        
        db  90,  75,  75,  70,  90, 100
        evs  0,   0,   0,   0,   0,   3
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 45 ; catch rate
        db 225 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/politoed/front.dimensions"  
        db WATER_ABSORB, DAMP     ; abilities
        db DRIZZLE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end