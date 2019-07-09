	dw 00undefined ;national dex no
        
        db  67,  58,  57, 101,  81,  67
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, FAIRY ; type
        db 180 ; catch rate
        db 151 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/dedenne/front.dimensions"  
        db CHEEK_POUCH, PICKUP     ; abilities
        db PLUS    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end