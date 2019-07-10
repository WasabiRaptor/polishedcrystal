	dw 00302 ;national dex no
        
        db  50,  75,  75,  50,  65,  65
        evs  0,   1,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, GHOST ; type
        db 45 ; catch rate
        db 133 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/sableye/front.dimensions"  
        db KEEN_EYE, STALL     ; abilities
        db PRANKSTER    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end