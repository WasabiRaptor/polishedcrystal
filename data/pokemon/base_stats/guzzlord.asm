	dw 00799 ;national dex no
        
        db 223, 101,  53,  43,  97,  53
        evs  3,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, DRAGON ; type
        db 45 ; catch rate
        db 257 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 15 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/guzzlord/front.dimensions"  
        db BEAST_BOOST, BEAST_BOOST     ; abilities
        db BEAST_BOOST    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end