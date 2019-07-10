	dw 00608 ;national dex no
        
        db  60,  40,  60,  55,  95,  60
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GHOST, FIRE ; type
        db 90 ; catch rate
        db 130 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/lampent/front.dimensions"  
        db FLASH_FIRE, FLAME_BODY     ; abilities
        db INFILTRATOR    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end