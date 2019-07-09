	dw 00undefined ;national dex no
        
        db  60,  80,  95,  50,  70,  85
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db STEEL, STEEL ; type
        db 60 ; catch rate
        db 154 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/klang/front.dimensions"  
        db PLUS, MINUS     ; abilities
        db CLEAR_BODY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end