	dw 00undefined ;national dex no
        
        db  70, 110,  80, 105,  55,  80
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, FLYING ; type
        db 45 ; catch rate
        db 100 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/scyther/front.dimensions"  
        db SWARM, TECHNICIAN     ; abilities
        db STEADFAST    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end