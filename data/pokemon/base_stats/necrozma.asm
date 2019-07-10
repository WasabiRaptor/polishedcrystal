	dw 00800 ;national dex no
        
        db  97, 107, 101,  79, 127,  89
        evs  0,   1,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, PSYCHIC ; type
        db 255 ; catch rate
        db 270 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/necrozma/front.dimensions"  
        db PRISM_ARMOR, PRISM_ARMOR     ; abilities
        db PRISM_ARMOR    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end