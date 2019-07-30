	dw 00677 ;national dex no
        
        db  62,  48,  54,  68,  63,  60
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, PSYCHIC ; type
        db 190 ; catch rate
        db 71 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/espurr/front.dimensions"  
        db KEEN_EYE, INFILTRATOR     ; abilities
        db OWN_TEMPO    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end