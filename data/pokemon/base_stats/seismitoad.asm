	dw 00537 ;national dex no
        
        db 105,  95,  75,  74,  85,  75
        evs  3,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, GROUND ; type
        db 45 ; catch rate
        db 229 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/seismitoad/front.dimensions"  
        db SWIFT_SWIM, POISON_TOUCH     ; abilities
        db WATER_ABSORB    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end