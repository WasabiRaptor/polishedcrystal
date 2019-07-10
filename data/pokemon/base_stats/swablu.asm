	dw 00333 ;national dex no
        
        db  45,  40,  60,  50,  40,  75
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 255 ; catch rate
        db 62 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/swablu/front.dimensions"  
        db NATURAL_CURE, NATURAL_CURE     ; abilities
        db CLOUD_NINE    ; hidden ability
        db GROWTH_ERRATIC ; growth rate
        dn EGG_FLYING, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end