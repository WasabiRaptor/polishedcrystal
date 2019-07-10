	dw 00185 ;national dex no
        
        db  70, 100, 115,  30,  30,  65
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, ROCK ; type
        db 65 ; catch rate
        db 144 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/sudowoodo/front.dimensions"  
        db STURDY, ROCK_HEAD     ; abilities
        db RATTLED    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end