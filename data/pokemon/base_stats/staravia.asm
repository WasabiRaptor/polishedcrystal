	dw 00undefined ;national dex no
        
        db  55,  75,  50,  80,  40,  40
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 120 ; catch rate
        db 119 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/staravia/front.dimensions"  
        db INTIMIDATE, INTIMIDATE     ; abilities
        db RECKLESS    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end