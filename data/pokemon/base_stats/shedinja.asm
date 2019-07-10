	dw 00292 ;national dex no
        
        db   1,  90,  45,  40,  30,  30
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, GHOST ; type
        db 45 ; catch rate
        db 83 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/shedinja/front.dimensions"  
        db WONDER_GUARD, WONDER_GUARD     ; abilities
        db WONDER_GUARD    ; hidden ability
        db GROWTH_ERRATIC ; growth rate
        dn EGG_MINERAL, EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end