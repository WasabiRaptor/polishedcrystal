	dw 00045 ;national dex no
        
        db  75,  80,  85,  50, 110,  90
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, POISON ; type
        db 45 ; catch rate
        db 221 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/vileplume/front.dimensions"  
        db CHLOROPHYLL, CHLOROPHYLL     ; abilities
        db EFFECT_SPORE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end