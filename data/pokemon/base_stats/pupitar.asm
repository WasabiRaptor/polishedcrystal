	dw 00undefined ;national dex no
        
        db  70,  84,  70,  51,  65,  70
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, GROUND ; type
        db 45 ; catch rate
        db 144 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pupitar/front.dimensions"  
        db SHED_SKIN, SHED_SKIN     ; abilities
        db SHED_SKIN    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_MONSTER ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end