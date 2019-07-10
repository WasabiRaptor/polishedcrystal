	dw 00208 ;national dex no
        
        db  75,  85, 200,  30,  55,  65
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db STEEL, GROUND ; type
        db 25 ; catch rate
        db 179 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/steelix/front.dimensions"  
        db ROCK_HEAD, STURDY     ; abilities
        db SHEER_FORCE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL, EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end