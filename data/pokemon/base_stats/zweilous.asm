	dw 00undefined ;national dex no
        
        db  72,  85,  70,  58,  65,  70
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, DRAGON ; type
        db 45 ; catch rate
        db 147 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/zweilous/front.dimensions"  
        db HUSTLE, HUSTLE     ; abilities
        db HUSTLE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end