	dw 00367 ;national dex no
        
        db  55, 104, 105,  52,  94,  75
        evs  0,   1,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 60 ; catch rate
        db 170 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/huntail/front.dimensions"  
        db SWIFT_SWIM, SWIFT_SWIM     ; abilities
        db WATER_VEIL    ; hidden ability
        db GROWTH_ERRATIC ; growth rate
        dn EGG_WATER_1, EGG_WATER_1 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end