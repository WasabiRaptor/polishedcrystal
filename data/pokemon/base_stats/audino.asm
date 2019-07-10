	dw 00531 ;national dex no
        
        db 103,  60,  86,  50,  60,  86
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 255 ; catch rate
        db 390 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/audino/front.dimensions"  
        db HEALER, REGENERATOR     ; abilities
        db KLUTZ    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end