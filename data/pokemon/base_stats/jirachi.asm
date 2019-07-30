	dw 00385 ;national dex no
        
        db 100, 100, 100, 100, 100, 100
        evs  3,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db STEEL, PSYCHIC ; type
        db 3 ; catch rate
        db 255 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 15 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/jirachi/front.dimensions"  
        db SERENE_GRACE, SERENE_GRACE     ; abilities
        db SERENE_GRACE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end