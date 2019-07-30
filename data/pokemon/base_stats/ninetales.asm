	dw 00038 ;national dex no
        
        db  73,  76,  75, 100,  81, 100
        evs  0,   0,   0,   1,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, FIRE ; type
        db 75 ; catch rate
        db 177 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/ninetales/front.dimensions"  
        db FLASH_FIRE, FLASH_FIRE     ; abilities
        db DROUGHT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end