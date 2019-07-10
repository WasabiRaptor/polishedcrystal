	dw 00506 ;national dex no
        
        db  45,  60,  45,  55,  25,  45
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 255 ; catch rate
        db 55 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/lillipup/front.dimensions"  
        db VITAL_SPIRIT, PICKUP     ; abilities
        db RUN_AWAY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end