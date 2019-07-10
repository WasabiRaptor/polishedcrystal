	dw 00603 ;national dex no
        
        db  65,  85,  70,  40,  75,  70
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 60 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/eelektrik/front.dimensions"  
        db LEVITATE, LEVITATE     ; abilities
        db LEVITATE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end