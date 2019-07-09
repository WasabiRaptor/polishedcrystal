	dw 00undefined ;national dex no
        
        db  68, 105,  70,  92,  70,  70
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, PSYCHIC ; type
        db 80 ; catch rate
        db 166 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/bruxish/front.dimensions"  
        db DAZZLING, STRONG_JAW     ; abilities
        db WONDER_SKIN    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_2 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end