	dw 00undefined ;national dex no
        
        db  58,  89,  77,  48,  45,  45
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, DRAGON ; type
        db 45 ; catch rate
        db 72 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 6 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/tyrunt/front.dimensions"  
        db STRONG_JAW, STRONG_JAW     ; abilities
        db STURDY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end