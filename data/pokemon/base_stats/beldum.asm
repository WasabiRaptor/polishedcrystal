	dw 00374 ;national dex no
        
        db  40,  55,  80,  30,  35,  60
        evs  0,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db STEEL, PSYCHIC ; type
        db 3 ; catch rate
        db 60 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/beldum/front.dimensions"  
        db CLEAR_BODY, CLEAR_BODY     ; abilities
        db LIGHT_METAL    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end