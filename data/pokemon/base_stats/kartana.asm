	dw 00798 ;national dex no
        
        db  59, 181, 131, 109,  59,  31
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, STEEL ; type
        db 45 ; catch rate
        db 257 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 15 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/kartana/front.dimensions"  
        db BEAST_BOOST, BEAST_BOOST     ; abilities
        db BEAST_BOOST    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end