	dw 00453 ;national dex no
        
        db  48,  61,  40,  50,  61,  40
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, FIGHTING ; type
        db 140 ; catch rate
        db 60 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/croagunk/front.dimensions"  
        db ANTICIPATION, DRY_SKIN     ; abilities
        db POISON_TOUCH    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end