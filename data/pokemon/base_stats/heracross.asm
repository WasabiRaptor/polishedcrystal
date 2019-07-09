	dw 00undefined ;national dex no
        
        db  80, 125,  75,  85,  40,  95
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, FIGHTING ; type
        db 45 ; catch rate
        db 175 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/heracross/front.dimensions"  
        db SWARM, GUTS     ; abilities
        db MOXIE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end