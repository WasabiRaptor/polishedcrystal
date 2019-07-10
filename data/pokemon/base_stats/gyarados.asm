	dw 00130 ;national dex no
        
        db  95, 125,  79,  81,  60, 100
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, FLYING ; type
        db 45 ; catch rate
        db 189 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 1 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gyarados/front.dimensions"  
        db INTIMIDATE, INTIMIDATE     ; abilities
        db MOXIE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_2, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end