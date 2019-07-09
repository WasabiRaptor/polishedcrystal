	dw 00undefined ;national dex no
        
        db  95, 109, 105,  56,  75,  85
        evs  0,   2,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GROUND ; type
        db 45 ; catch rate
        db 236 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/torterra/front.dimensions"  
        db OVERGROW, OVERGROW     ; abilities
        db SHELL_ARMOR    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end