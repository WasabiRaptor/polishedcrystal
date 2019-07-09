	dw 000undefined ;national dex no
        
        db  90, 110,  80,  95, 100,  80
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, FIRE ; type
        db 75 ; catch rate
        db 194 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_25, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/arcanine/front.dimensions"  
        db INTIMIDATE, FLASH_FIRE     ; abilities
        db JUSTIFIED    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end