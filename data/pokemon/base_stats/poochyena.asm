	dw 00261 ;national dex no
        
        db  35,  55,  35,  35,  30,  30
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, DARK ; type
        db 255 ; catch rate
        db 56 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/poochyena/front.dimensions"  
        db RUN_AWAY, QUICK_FEET     ; abilities
        db RATTLED    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end