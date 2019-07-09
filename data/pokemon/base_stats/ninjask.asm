	dw 00undefined ;national dex no
        
        db  61,  90,  45, 160,  50,  50
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, FLYING ; type
        db 120 ; catch rate
        db 160 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/ninjask/front.dimensions"  
        db SPEED_BOOST, SPEED_BOOST     ; abilities
        db INFILTRATOR    ; hidden ability
        db GROWTH_ERRATIC ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end