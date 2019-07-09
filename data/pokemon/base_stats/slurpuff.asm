	dw 00undefined ;national dex no
        
        db  82,  80,  86,  72,  85,  75
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FAIRY, FAIRY ; type
        db 140 ; catch rate
        db 168 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/slurpuff/front.dimensions"  
        db SWEET_VEIL, SWEET_VEIL     ; abilities
        db UNBURDEN    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end