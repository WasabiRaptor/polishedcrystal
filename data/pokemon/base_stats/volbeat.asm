	dw 00313 ;national dex no
        
        db  65,  73,  75,  85,  47,  85
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, BUG ; type
        db 150 ; catch rate
        db 151 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_MALE, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/volbeat/front.dimensions"  
        db ILLUMINATE, SWARM     ; abilities
        db PRANKSTER    ; hidden ability
        db GROWTH_ERRATIC ; growth rate
        dn EGG_BUG, EGG_HUMAN_LIKE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end