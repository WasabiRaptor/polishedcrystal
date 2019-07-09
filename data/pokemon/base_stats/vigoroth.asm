	dw 00undefined ;national dex no
        
        db  80,  80,  80,  90,  55,  55
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 120 ; catch rate
        db 154 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/vigoroth/front.dimensions"  
        db VITAL_SPIRIT, VITAL_SPIRIT     ; abilities
        db VITAL_SPIRIT    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end