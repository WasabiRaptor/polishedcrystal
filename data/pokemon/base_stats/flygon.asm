	dw 00undefined ;national dex no
        
        db  80, 100,  80, 100,  80,  80
        evs  0,   1,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, DRAGON ; type
        db 45 ; catch rate
        db 234 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/flygon/front.dimensions"  
        db LEVITATE, LEVITATE     ; abilities
        db LEVITATE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end