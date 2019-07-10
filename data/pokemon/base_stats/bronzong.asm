	dw 00437 ;national dex no
        
        db  67,  89, 116,  33,  79, 116
        evs  0,   0,   1,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db STEEL, PSYCHIC ; type
        db 90 ; catch rate
        db 175 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/bronzong/front.dimensions"  
        db LEVITATE, HEATPROOF     ; abilities
        db HEAVY_METAL    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end