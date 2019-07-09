	dw 00undefined ;national dex no
        
        db  90, 120, 100, 100, 150, 120
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, DRAGON ; type
        db 3 ; catch rate
        db 306 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/palkia/front.dimensions"  
        db PRESSURE, PRESSURE     ; abilities
        db TELEPATHY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end