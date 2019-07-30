	dw 00535 ;national dex no
        
        db  50,  50,  40,  64,  50,  40
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 255 ; catch rate
        db 59 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/tympole/front.dimensions"  
        db SWIFT_SWIM, HYDRATION     ; abilities
        db WATER_ABSORB    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1, EGG_WATER_1 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end