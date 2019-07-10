	dw 00017 ;national dex no
        
        db  63,  60,  55,  71,  50,  50
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 120 ; catch rate
        db 122 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pidgeotto/front.dimensions"  
        db KEEN_EYE, TANGLED_FEET     ; abilities
        db BIG_PECKS    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FLYING, EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end