	dw 00224 ;national dex no
        
        db  75, 105,  75,  45, 105,  75
        evs  0,   1,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 75 ; catch rate
        db 168 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/octillery/front.dimensions"  
        db SUCTION_CUPS, SNIPER     ; abilities
        db MOODY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_WATER_2 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end