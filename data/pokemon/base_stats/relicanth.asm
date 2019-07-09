	dw 00undefined ;national dex no
        
        db 100,  90, 130,  55,  45,  65
        evs  1,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, ROCK ; type
        db 25 ; catch rate
        db 170 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/relicanth/front.dimensions"  
        db SWIFT_SWIM, ROCK_HEAD     ; abilities
        db STURDY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_1, EGG_WATER_2 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end