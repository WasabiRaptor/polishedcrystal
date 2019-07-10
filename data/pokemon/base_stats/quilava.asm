	dw 00156 ;national dex no
        
        db  58,  64,  58,  80,  80,  65
        evs  0,   0,   0,   1,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, FIRE ; type
        db 45 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/quilava/front.dimensions"  
        db BLAZE, BLAZE     ; abilities
        db FLASH_FIRE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end