	dw 00undefined ;national dex no
        
        db  45,  60,  32,  76,  50,  32
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 190 ; catch rate
        db 59 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/blitzle/front.dimensions"  
        db LIGHTNING_ROD, MOTOR_DRIVE     ; abilities
        db SAP_SIPPER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end