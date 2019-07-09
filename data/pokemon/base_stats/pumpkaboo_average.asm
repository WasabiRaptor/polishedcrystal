	dw 00undefined ;national dex no
        
        db  49,  66,  70,  51,  44,  55
        evs  0,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GHOST, GRASS ; type
        db 120 ; catch rate
        db 67 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pumpkaboo_average/front.dimensions"  
        db PICKUP, FRISK     ; abilities
        db INSOMNIA    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end