	dw 00067 ;national dex no
        
        db  80, 100,  70,  45,  50,  60
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIGHTING, FIGHTING ; type
        db 90 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_25, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/machoke/front.dimensions"  
        db GUTS, NO_GUARD     ; abilities
        db STEADFAST    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end