	dw 00282 ;national dex no
        
        db  68,  65,  65,  80, 125, 115
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, FAIRY ; type
        db 45 ; catch rate
        db 233 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gardevoir/front.dimensions"  
        db SYNCHRONIZE, TRACE     ; abilities
        db TELEPATHY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end