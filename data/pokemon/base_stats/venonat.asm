	dw 000undefined ;national dex no
        
        db  60,  55,  50,  45,  40,  55
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, POISON ; type
        db 190 ; catch rate
        db 61 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/venonat/front.dimensions"  
        db COMPOUND_EYES, TINTED_LENS     ; abilities
        db RUN_AWAY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end