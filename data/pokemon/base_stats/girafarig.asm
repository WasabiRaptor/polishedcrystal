	dw 00undefined ;national dex no
        
        db  70,  80,  65,  85,  90,  65
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, PSYCHIC ; type
        db 60 ; catch rate
        db 159 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/girafarig/front.dimensions"  
        db INNER_FOCUS, EARLY_BIRD     ; abilities
        db SAP_SIPPER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end