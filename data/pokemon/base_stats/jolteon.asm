	dw 00135 ;national dex no
        
        db  65,  65,  60, 130, 110,  95
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 45 ; catch rate
        db 184 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 7 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/jolteon/front.dimensions"  
        db VOLT_ABSORB, VOLT_ABSORB     ; abilities
        db QUICK_FEET    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end