	dw 00125 ;national dex no
        
        db  65,  83,  57, 105,  95,  85
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 45 ; catch rate
        db 172 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_25, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/electabuzz/front.dimensions"  
        db STATIC, STATIC     ; abilities
        db VITAL_SPIRIT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end