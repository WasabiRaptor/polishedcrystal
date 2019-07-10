	dw 00643 ;national dex no
        
        db 100, 120, 100,  90, 150, 120
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DRAGON, FIRE ; type
        db 3 ; catch rate
        db 306 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/reshiram/front.dimensions"  
        db TURBOBLAZE, TURBOBLAZE     ; abilities
        db TURBOBLAZE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end