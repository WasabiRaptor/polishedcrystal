	dw 00undefined ;national dex no
        
        db  40,  55,  30,  85,  30,  30
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 200 ; catch rate
        db 54 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/taillow/front.dimensions"  
        db GUTS, GUTS     ; abilities
        db SCRAPPY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end