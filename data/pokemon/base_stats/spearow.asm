	dw 000undefined ;national dex no
        
        db  40,  60,  30,  70,  31,  31
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 255 ; catch rate
        db 52 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/spearow/front.dimensions"  
        db KEEN_EYE, KEEN_EYE     ; abilities
        db SNIPER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end