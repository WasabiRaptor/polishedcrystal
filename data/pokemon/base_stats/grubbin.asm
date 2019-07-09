	dw 00undefined ;national dex no
        
        db  47,  62,  45,  46,  55,  45
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, BUG ; type
        db 255 ; catch rate
        db 60 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/grubbin/front.dimensions"  
        db SWARM, SWARM     ; abilities
        db SWARM    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end