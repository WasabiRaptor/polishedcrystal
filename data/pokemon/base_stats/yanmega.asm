	dw 00469 ;national dex no
        
        db  86,  76,  86,  95, 116,  56
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, FLYING ; type
        db 30 ; catch rate
        db 180 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/yanmega/front.dimensions"  
        db SPEED_BOOST, TINTED_LENS     ; abilities
        db FRISK    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG, EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end