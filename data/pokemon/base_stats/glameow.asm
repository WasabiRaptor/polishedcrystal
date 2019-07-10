	dw 00431 ;national dex no
        
        db  49,  55,  42,  85,  42,  37
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 190 ; catch rate
        db 62 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/glameow/front.dimensions"  
        db LIMBER, OWN_TEMPO     ; abilities
        db KEEN_EYE    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end