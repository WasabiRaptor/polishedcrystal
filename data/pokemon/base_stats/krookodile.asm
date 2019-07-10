	dw 00553 ;national dex no
        
        db  95, 117,  80,  92,  65,  70
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, DARK ; type
        db 45 ; catch rate
        db 234 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/krookodile/front.dimensions"  
        db INTIMIDATE, MOXIE     ; abilities
        db ANGER_POINT    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end