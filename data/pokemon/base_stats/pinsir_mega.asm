	dw 00127 ;national dex no
        
        db  65, 155, 120, 105,  65,  90
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, FLYING ; type
        db 45 ; catch rate
        db 175 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pinsir/front.dimensions"  
        db AERIALATE, AERIALATE     ; abilities
        db AERIALATE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_BUG, EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
