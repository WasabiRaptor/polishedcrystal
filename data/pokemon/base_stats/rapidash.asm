	dw 000undefined ;national dex no
        
        db  65, 100,  70, 105,  80,  80
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, FIRE ; type
        db 60 ; catch rate
        db 175 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/rapidash/front.dimensions"  
        db RUN_AWAY, FLASH_FIRE     ; abilities
        db FLAME_BODY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end