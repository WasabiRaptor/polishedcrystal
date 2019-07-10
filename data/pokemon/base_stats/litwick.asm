	dw 00607 ;national dex no
        
        db  50,  30,  55,  20,  65,  55
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GHOST, FIRE ; type
        db 190 ; catch rate
        db 55 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/litwick/front.dimensions"  
        db FLASH_FIRE, FLAME_BODY     ; abilities
        db INFILTRATOR    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end