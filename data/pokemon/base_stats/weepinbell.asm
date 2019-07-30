	dw 00070 ;national dex no
        
        db  65,  90,  50,  55,  85,  45
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, POISON ; type
        db 120 ; catch rate
        db 137 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/weepinbell/front.dimensions"  
        db CHLOROPHYLL, CHLOROPHYLL     ; abilities
        db GLUTTONY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_GRASS, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end