	dw 0000undefined ;national dex no
        
        db  60,  62,  63,  60,  80,  80
        evs  0,   0,   0,   0,   1,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, POISON ; type
        db 45 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/ivysaur/front.dimensions"  
        db OVERGROW, OVERGROW     ; abilities
        db CHLOROPHYLL    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end