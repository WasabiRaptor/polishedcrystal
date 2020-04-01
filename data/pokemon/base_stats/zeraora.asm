	dw 00807 ;national dex no
        
        db  88, 112,  75, 143, 102,  80
        evs  0,   0,   0,   3,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 3 ; catch rate
        db 255 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 15 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/zeraora/front.dimensions"  
        db VOLT_ABSORB, VOLT_ABSORB     ; abilities
        db VOLT_ABSORB    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end