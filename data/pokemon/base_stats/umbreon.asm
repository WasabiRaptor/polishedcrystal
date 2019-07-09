	dw 00undefined ;national dex no
        
        db  95,  65, 110,  65,  60, 130
        evs  0,   0,   0,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, DARK ; type
        db 45 ; catch rate
        db 184 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 7 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/umbreon/front.dimensions"  
        db SYNCHRONIZE, SYNCHRONIZE     ; abilities
        db INNER_FOCUS    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end