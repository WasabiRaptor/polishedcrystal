	dw 00518 ;national dex no
        
        db 116,  55,  85,  29, 107,  95
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, PSYCHIC ; type
        db 75 ; catch rate
        db 170 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/musharna/front.dimensions"  
        db FOREWARN, SYNCHRONIZE     ; abilities
        db TELEPATHY    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end