	dw 00undefined ;national dex no
        
        db  80, 115,  80,  93,  65,  55
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 45 ; catch rate
        db 220 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/unfezant/front.dimensions"  
        db BIG_PECKS, SUPER_LUCK     ; abilities
        db RIVALRY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end