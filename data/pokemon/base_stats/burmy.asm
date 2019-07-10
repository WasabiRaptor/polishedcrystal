	dw 00412 ;national dex no
        
        db  40,  29,  45,  36,  29,  45
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, BUG ; type
        db 120 ; catch rate
        db 45 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/burmy/front.dimensions"  
        db SHED_SKIN, SHED_SKIN     ; abilities
        db OVERCOAT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end