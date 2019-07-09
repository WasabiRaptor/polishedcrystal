	dw 00undefined ;national dex no
        
        db 108, 100, 121,  95,  81,  95
        evs  3,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DRAGON, GROUND ; type
        db 3 ; catch rate
        db 270 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/zygarde/front.dimensions"  
        db AURA_BREAK, AURA_BREAK     ; abilities
        db AURA_BREAK    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end