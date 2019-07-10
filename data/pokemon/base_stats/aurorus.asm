	dw 00699 ;national dex no
        
        db 123,  77,  72,  58,  99,  92
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, ICE ; type
        db 45 ; catch rate
        db 104 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 6 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/aurorus/front.dimensions"  
        db REFRIGERATE, REFRIGERATE     ; abilities
        db SNOW_WARNING    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end