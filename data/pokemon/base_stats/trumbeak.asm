	dw 00732 ;national dex no
        
        db  55,  85,  50,  75,  40,  50
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 120 ; catch rate
        db 124 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/trumbeak/front.dimensions"  
        db KEEN_EYE, SKILL_LINK     ; abilities
        db PICKUP    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING, EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end