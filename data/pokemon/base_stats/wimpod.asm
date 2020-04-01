	dw 00767 ;national dex no
        
        db  25,  35,  40,  80,  20,  30
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, WATER ; type
        db 90 ; catch rate
        db 46 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/wimpod/front.dimensions"  
        db WIMP_OUT, WIMP_OUT     ; abilities
        db WIMP_OUT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG, EGG_WATER_3 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end