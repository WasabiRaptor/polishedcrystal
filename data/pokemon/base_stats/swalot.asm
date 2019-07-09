	dw 00undefined ;national dex no
        
        db 100,  73,  83,  55,  73,  83
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, POISON ; type
        db 75 ; catch rate
        db 163 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/swalot/front.dimensions"  
        db LIQUID_OOZE, STICKY_HOLD     ; abilities
        db GLUTTONY    ; hidden ability
        db GROWTH_FLUCTUATING ; growth rate
        dn EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end