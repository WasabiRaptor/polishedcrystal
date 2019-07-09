	dw 00undefined ;national dex no
        
        db  85,  70,  80, 123,  97,  80
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FLYING, DRAGON ; type
        db 45 ; catch rate
        db 187 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/noivern/front.dimensions"  
        db FRISK, INFILTRATOR     ; abilities
        db TELEPATHY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end