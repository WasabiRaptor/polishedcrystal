	dw 00646 ;national dex no
        
        db 125, 130,  90,  95, 130,  90
        evs  1,   1,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DRAGON, ICE ; type
        db 3 ; catch rate
        db 255 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 15 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/kyurem/front.dimensions"  
        db PRESSURE, PRESSURE     ; abilities
        db PRESSURE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end