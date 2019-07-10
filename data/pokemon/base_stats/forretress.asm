	dw 00205 ;national dex no
        
        db  75,  90, 140,  40,  60,  60
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, STEEL ; type
        db 75 ; catch rate
        db 163 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/forretress/front.dimensions"  
        db STURDY, STURDY     ; abilities
        db OVERCOAT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end