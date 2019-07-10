	dw 00352 ;national dex no
        
        db  60,  90,  70,  40,  60, 120
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 200 ; catch rate
        db 154 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/kecleon/front.dimensions"  
        db COLOR_CHANGE, COLOR_CHANGE     ; abilities
        db PROTEAN    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end