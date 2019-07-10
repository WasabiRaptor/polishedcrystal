	dw 00022 ;national dex no
        
        db  65,  90,  65, 100,  61,  61
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 90 ; catch rate
        db 155 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/fearow/front.dimensions"  
        db KEEN_EYE, KEEN_EYE     ; abilities
        db SNIPER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING, EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end