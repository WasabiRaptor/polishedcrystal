	dw 00undefined ;national dex no
        
        db  70, 120,  65, 125,  45,  85
        evs  0,   1,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, ICE ; type
        db 45 ; catch rate
        db 179 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/weavile/front.dimensions"  
        db PRESSURE, PRESSURE     ; abilities
        db PICKPOCKET    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end