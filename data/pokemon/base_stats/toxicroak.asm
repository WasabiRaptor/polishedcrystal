	dw 00454 ;national dex no
        
        db  83, 106,  65,  85,  86,  65
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, FIGHTING ; type
        db 75 ; catch rate
        db 172 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/toxicroak/front.dimensions"  
        db ANTICIPATION, DRY_SKIN     ; abilities
        db POISON_TOUCH    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end