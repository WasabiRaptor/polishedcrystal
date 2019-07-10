	dw 00556 ;national dex no
        
        db  75,  86,  67,  60, 106,  67
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 255 ; catch rate
        db 161 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/maractus/front.dimensions"  
        db WATER_ABSORB, CHLOROPHYLL     ; abilities
        db STORM_DRAIN    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end