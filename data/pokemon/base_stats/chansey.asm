	dw 00113 ;national dex no
        
        db 250,   5,   5,  50,  35, 105
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 30 ; catch rate
        db 395 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/chansey/front.dimensions"  
        db NATURAL_CURE, SERENE_GRACE     ; abilities
        db HEALER    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end