	dw 00undefined ;national dex no
        
        db  76,  65,  45,  91,  92,  42
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 30 ; catch rate
        db 144 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/chatot/front.dimensions"  
        db KEEN_EYE, TANGLED_FEET     ; abilities
        db BIG_PECKS    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end