	dw 00792 ;national dex no
        
        db 137, 113,  89,  97, 137, 107
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, GHOST ; type
        db 45 ; catch rate
        db 306 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/lunala/front.dimensions"  
        db SHADOW_SHIELD, SHADOW_SHIELD     ; abilities
        db SHADOW_SHIELD    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end