	dw 00undefined ;national dex no
        
        db  58,  50, 145,  30,  95, 105
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GHOST, GHOST ; type
        db 90 ; catch rate
        db 169 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cofagrigus/front.dimensions"  
        db MUMMY, MUMMY     ; abilities
        db MUMMY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL, EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end