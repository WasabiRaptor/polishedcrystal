	dw 00624 ;national dex no
        
        db  45,  85,  70,  60,  40,  40
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, STEEL ; type
        db 120 ; catch rate
        db 68 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pawniard/front.dimensions"  
        db DEFIANT, INNER_FOCUS     ; abilities
        db PRESSURE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end