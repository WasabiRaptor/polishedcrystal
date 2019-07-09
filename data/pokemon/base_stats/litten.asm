	dw 00undefined ;national dex no
        
        db  45,  65,  40,  70,  60,  40
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, FIRE ; type
        db 45 ; catch rate
        db 64 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/litten/front.dimensions"  
        db BLAZE, BLAZE     ; abilities
        db INTIMIDATE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end