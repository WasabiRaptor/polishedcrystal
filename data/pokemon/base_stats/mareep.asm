	dw 00undefined ;national dex no
        
        db  55,  40,  40,  35,  65,  45
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 235 ; catch rate
        db 56 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/mareep/front.dimensions"  
        db STATIC, STATIC     ; abilities
        db PLUS    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end