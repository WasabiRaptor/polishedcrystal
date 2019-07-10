	dw 00149 ;national dex no
        
        db  91, 134,  95,  80, 100, 100
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DRAGON, FLYING ; type
        db 45 ; catch rate
        db 255 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/dragonite/front.dimensions"  
        db INNER_FOCUS, INNER_FOCUS     ; abilities
        db MULTISCALE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_1, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end