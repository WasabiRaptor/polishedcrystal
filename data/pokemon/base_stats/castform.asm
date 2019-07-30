	dw 00351 ;national dex no
        
        db  70,  70,  70,  70,  70,  70
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 45 ; catch rate
        db 147 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/castform/front.dimensions"  
        db FORECAST, FORECAST     ; abilities
        db FORECAST    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FAIRY, EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end