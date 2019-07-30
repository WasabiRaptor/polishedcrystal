	dw 00227 ;national dex no
        
        db  65,  80, 140,  70,  40,  70
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db STEEL, FLYING ; type
        db 25 ; catch rate
        db 163 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/skarmory/front.dimensions"  
        db KEEN_EYE, STURDY     ; abilities
        db WEAK_ARMOR    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FLYING, EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end