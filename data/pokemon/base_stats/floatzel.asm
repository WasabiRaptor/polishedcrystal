	dw 00undefined ;national dex no
        
        db  85, 105,  55, 115,  85,  50
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 75 ; catch rate
        db 173 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/floatzel/front.dimensions"  
        db SWIFT_SWIM, SWIFT_SWIM     ; abilities
        db WATER_VEIL    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end