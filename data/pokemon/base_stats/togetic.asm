	dw 00176 ;national dex no
        
        db  55,  40,  85,  40,  80, 105
        evs  0,   0,   0,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf
        
        db FAIRY, FLYING ; type
        db 75 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/togetic/front.dimensions"  
        db HUSTLE, SERENE_GRACE     ; abilities
        db SUPER_LUCK    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FLYING, EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end