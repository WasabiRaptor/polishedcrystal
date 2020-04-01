	dw 00274 ;national dex no
        
        db  70,  70,  40,  60,  60,  40
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, DARK ; type
        db 120 ; catch rate
        db 119 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/nuzleaf/front.dimensions"  
        db CHLOROPHYLL, EARLY_BIRD     ; abilities
        db PICKPOCKET    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end