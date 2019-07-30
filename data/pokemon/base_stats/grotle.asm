	dw 00388 ;national dex no
        
        db  75,  89,  85,  36,  55,  65
        evs  0,   1,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 45 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/grotle/front.dimensions"  
        db OVERGROW, OVERGROW     ; abilities
        db SHELL_ARMOR    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end