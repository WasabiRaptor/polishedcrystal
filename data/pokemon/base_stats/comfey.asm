	dw 00764 ;national dex no
        
        db  51,  52,  90, 100,  82, 110
        evs  0,   0,   0,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf
        
        db FAIRY, FAIRY ; type
        db 60 ; catch rate
        db 170 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/comfey/front.dimensions"  
        db FLOWER_VEIL, TRIAGE     ; abilities
        db NATURAL_CURE    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end