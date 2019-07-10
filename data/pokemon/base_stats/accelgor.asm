	dw 00617 ;national dex no
        
        db  80,  70,  40, 145, 100,  60
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, BUG ; type
        db 75 ; catch rate
        db 173 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/accelgor/front.dimensions"  
        db HYDRATION, STICKY_HOLD     ; abilities
        db UNBURDEN    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG, EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end