	dw 00357 ;national dex no
        
        db  99,  68,  83,  51,  72,  87
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, FLYING ; type
        db 200 ; catch rate
        db 161 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/tropius/front.dimensions"  
        db CHLOROPHYLL, SOLAR_POWER     ; abilities
        db HARVEST    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_MONSTER, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end