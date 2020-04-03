	dw 00065 ;national dex no
        
        db  55,  50,  65, 150, 175, 105
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, PSYCHIC ; type
        db 50 ; catch rate
        db 225 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_25, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/alakazam/front.dimensions"  
        db TRACE, TRACE     ; abilities
        db TRACE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
