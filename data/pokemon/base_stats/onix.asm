	dw 00095 ;national dex no
        
        db  35,  45, 160,  70,  30,  45
        evs  0,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, GROUND ; type
        db 45 ; catch rate
        db 77 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/onix/front.dimensions"  
        db ROCK_HEAD, STURDY     ; abilities
        db WEAK_ARMOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL, EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end