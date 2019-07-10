	dw 00684 ;national dex no
        
        db  62,  48,  66,  49,  59,  57
        evs  0,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FAIRY, FAIRY ; type
        db 200 ; catch rate
        db 68 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/swirlix/front.dimensions"  
        db SWEET_VEIL, SWEET_VEIL     ; abilities
        db UNBURDEN    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end