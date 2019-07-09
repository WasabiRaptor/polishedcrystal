	dw 00undefined ;national dex no
        
        db  85, 135, 130,  25,  60,  80
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, ROCK ; type
        db 45 ; catch rate
        db 232 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gigalith/front.dimensions"  
        db STURDY, SAND_STREAM     ; abilities
        db SAND_FORCE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end