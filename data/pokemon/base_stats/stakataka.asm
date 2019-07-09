	dw 00undefined ;national dex no
        
        db  61, 131, 211,  13,  53, 101
        evs  0,   0,   3,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, STEEL ; type
        db 30 ; catch rate
        db 257 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/stakataka/front.dimensions"  
        db BEAST_BOOST, BEAST_BOOST     ; abilities
        db BEAST_BOOST    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end