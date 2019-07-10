	dw 00446 ;national dex no
        
        db 135,  85,  40,   5,  40,  85
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 50 ; catch rate
        db 78 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/munchlax/front.dimensions"  
        db PICKUP, THICK_FAT     ; abilities
        db GLUTTONY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end