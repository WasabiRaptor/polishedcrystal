	dw 00undefined ;national dex no
        
        db  60,  85,  69,  77,  60,  69
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 255 ; catch rate
        db 147 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/watchog/front.dimensions"  
        db ILLUMINATE, KEEN_EYE     ; abilities
        db ANALYTIC    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end