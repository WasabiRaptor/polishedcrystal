	dw 00448 ;national dex no
        
        db  70, 110,  70,  90, 115,  70
        evs  0,   1,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIGHTING, STEEL ; type
        db 45 ; catch rate
        db 184 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/lucario/front.dimensions"  
        db STEADFAST, INNER_FOCUS     ; abilities
        db JUSTIFIED    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end