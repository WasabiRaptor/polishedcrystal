	dw 00523 ;national dex no
        
        db  75, 100,  63, 116,  80,  63
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 75 ; catch rate
        db 174 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/zebstrika/front.dimensions"  
        db LIGHTNING_ROD, MOTOR_DRIVE     ; abilities
        db SAP_SIPPER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end