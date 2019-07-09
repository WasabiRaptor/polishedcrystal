	dw 00undefined ;national dex no
        
        db  75, 140,  65, 110, 112,  65
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, FLYING ; type
        db 45 ; catch rate
        db 177 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 6 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/archeops/front.dimensions"  
        db DEFEATIST, DEFEATIST     ; abilities
        db DEFEATIST    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING, EGG_WATER_3 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end