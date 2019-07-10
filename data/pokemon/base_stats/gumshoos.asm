	dw 00735 ;national dex no
        
        db  88, 110,  60,  45,  55,  60
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 127 ; catch rate
        db 146 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gumshoos/front.dimensions"  
        db STAKEOUT, STRONG_JAW     ; abilities
        db ADAPTABILITY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end