	dw 00472 ;national dex no
        
        db  75,  95, 125,  95,  45,  75
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, FLYING ; type
        db 30 ; catch rate
        db 179 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gliscor/front.dimensions"  
        db HYPER_CUTTER, SAND_VEIL     ; abilities
        db POISON_HEAL    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_BUG, EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end