	dw 00106 ;national dex no
        
        db  50, 120,  53,  87,  35, 110
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIGHTING, FIGHTING ; type
        db 45 ; catch rate
        db 159 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_MALE, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/hitmonlee/front.dimensions"  
        db LIMBER, RECKLESS     ; abilities
        db UNBURDEN    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMAN_LIKE, EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end