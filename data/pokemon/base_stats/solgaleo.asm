	dw 00undefined ;national dex no
        
        db 137, 137, 107,  97, 113,  89
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, STEEL ; type
        db 45 ; catch rate
        db 306 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/solgaleo/front.dimensions"  
        db FULL_METAL_BODY, FULL_METAL_BODY     ; abilities
        db FULL_METAL_BODY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end