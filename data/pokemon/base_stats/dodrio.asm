	dw 000undefined ;national dex no
        
        db  60, 110,  70, 110,  60,  60
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 45 ; catch rate
        db 165 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/dodrio/front.dimensions"  
        db RUN_AWAY, EARLY_BIRD     ; abilities
        db TANGLED_FEET    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end