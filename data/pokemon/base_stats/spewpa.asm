	dw 00665 ;national dex no
        
        db  45,  22,  60,  29,  27,  30
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, BUG ; type
        db 120 ; catch rate
        db 75 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/spewpa/front.dimensions"  
        db SHED_SKIN, SHED_SKIN     ; abilities
        db FRIEND_GUARD    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end