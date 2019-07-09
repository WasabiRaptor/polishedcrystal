	dw 00undefined ;national dex no
        
        db  73,  73,  73, 121, 127,  73
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, DRAGON ; type
        db 45 ; catch rate
        db 243 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/naganadel/front.dimensions"  
        db BEAST_BOOST, BEAST_BOOST     ; abilities
        db BEAST_BOOST    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end