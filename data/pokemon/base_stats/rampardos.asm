	dw 00undefined ;national dex no
        
        db  97, 165,  60,  58,  65,  50
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, ROCK ; type
        db 45 ; catch rate
        db 173 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 6 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/rampardos/front.dimensions"  
        db MOLD_BREAKER, MOLD_BREAKER     ; abilities
        db SHEER_FORCE    ; hidden ability
        db GROWTH_ERRATIC ; growth rate
        dn EGG_MONSTER ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end