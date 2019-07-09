	dw 00undefined ;national dex no
        
        db  40,  40,  55,  55,  40,  70
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, PSYCHIC ; type
        db 255 ; catch rate
        db 60 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/baltoy/front.dimensions"  
        db LEVITATE, LEVITATE     ; abilities
        db LEVITATE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end