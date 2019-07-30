	dw 00215 ;national dex no
        
        db  55,  95,  55, 115,  35,  75
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, ICE ; type
        db 60 ; catch rate
        db 86 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/sneasel/front.dimensions"  
        db INNER_FOCUS, KEEN_EYE     ; abilities
        db PICKPOCKET    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end