	dw 00538 ;national dex no
        
        db 120, 100,  85,  45,  30,  85
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIGHTING, FIGHTING ; type
        db 45 ; catch rate
        db 163 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_MALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/throh/front.dimensions"  
        db GUTS, INNER_FOCUS     ; abilities
        db MOLD_BREAKER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end