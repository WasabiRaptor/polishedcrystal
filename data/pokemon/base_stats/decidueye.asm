	dw 00724 ;national dex no
        
        db  78, 107,  75,  70, 100, 100
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GHOST ; type
        db 45 ; catch rate
        db 239 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/decidueye/front.dimensions"  
        db OVERGROW, OVERGROW     ; abilities
        db LONG_REACH    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end