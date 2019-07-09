	dw 000undefined ;national dex no
        
        db  35,  70,  55,  25,  45,  55
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, GRASS ; type
        db 190 ; catch rate
        db 57 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/paras/front.dimensions"  
        db EFFECT_SPORE, DRY_SKIN     ; abilities
        db DAMP    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end