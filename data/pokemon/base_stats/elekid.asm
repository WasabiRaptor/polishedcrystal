	dw 00undefined ;national dex no
        
        db  45,  63,  37,  95,  65,  55
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 45 ; catch rate
        db 72 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_25, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/elekid/front.dimensions"  
        db STATIC, STATIC     ; abilities
        db VITAL_SPIRIT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end