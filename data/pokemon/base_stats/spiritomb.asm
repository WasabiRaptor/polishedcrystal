	dw 00442 ;national dex no
        
        db  50,  92, 108,  35,  92, 108
        evs  0,   0,   1,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db GHOST, DARK ; type
        db 100 ; catch rate
        db 170 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 6 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/spiritomb/front.dimensions"  
        db PRESSURE, PRESSURE     ; abilities
        db INFILTRATOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end