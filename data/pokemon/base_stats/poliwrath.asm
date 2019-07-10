	dw 00062 ;national dex no
        
        db  90,  95,  95,  70,  70,  90
        evs  0,   0,   3,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, FIGHTING ; type
        db 45 ; catch rate
        db 230 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/poliwrath/front.dimensions"  
        db WATER_ABSORB, DAMP     ; abilities
        db SWIFT_SWIM    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end