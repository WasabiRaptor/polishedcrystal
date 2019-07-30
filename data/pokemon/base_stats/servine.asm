	dw 00496 ;national dex no
        
        db  60,  60,  75,  83,  60,  75
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 45 ; catch rate
        db 145 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/servine/front.dimensions"  
        db OVERGROW, OVERGROW     ; abilities
        db CONTRARY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end