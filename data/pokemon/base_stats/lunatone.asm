	dw 00337 ;national dex no
        
        db  90,  55,  65,  70,  95,  85
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, PSYCHIC ; type
        db 45 ; catch rate
        db 161 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/lunatone/front.dimensions"  
        db LEVITATE, LEVITATE     ; abilities
        db LEVITATE    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_MINERAL, EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end