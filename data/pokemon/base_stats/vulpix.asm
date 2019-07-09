	dw 000undefined ;national dex no
        
        db  38,  41,  40,  65,  50,  65
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, FIRE ; type
        db 190 ; catch rate
        db 60 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/vulpix/front.dimensions"  
        db FLASH_FIRE, FLASH_FIRE     ; abilities
        db DROUGHT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end