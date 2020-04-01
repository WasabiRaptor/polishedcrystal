	dw 00644 ;national dex no
        
        db 100, 150, 120,  90, 120, 100
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DRAGON, ELECTRIC ; type
        db 3 ; catch rate
        db 255 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 15 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/zekrom/front.dimensions"  
        db TERAVOLT, TERAVOLT     ; abilities
        db TERAVOLT    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end