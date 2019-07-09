	dw 000undefined ;national dex no
        
        db  50,  85,  55,  90,  65,  65
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, FIRE ; type
        db 190 ; catch rate
        db 82 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/ponyta/front.dimensions"  
        db RUN_AWAY, FLASH_FIRE     ; abilities
        db FLAME_BODY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end