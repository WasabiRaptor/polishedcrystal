	dw 00undefined ;national dex no
        
        db  70, 115,  60,  55, 115,  60
        evs  0,   1,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, DARK ; type
        db 60 ; catch rate
        db 166 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cacturne/front.dimensions"  
        db SAND_VEIL, SAND_VEIL     ; abilities
        db WATER_ABSORB    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_GRASS, EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end