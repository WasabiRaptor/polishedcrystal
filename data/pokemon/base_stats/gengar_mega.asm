	dw 00094 ;national dex no
        
        db  60,  65,  80, 130, 170,  95
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GHOST, POISON ; type
        db 45 ; catch rate
        db 225 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gengar/front.dimensions"  
        db SHADOW_TAG, SHADOW_TAG     ; abilities
        db SHADOW_TAG    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
