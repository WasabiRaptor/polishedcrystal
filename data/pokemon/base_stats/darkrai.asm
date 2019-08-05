	dw 00491 ;national dex no
        
        db  70,  90,  90, 125, 135,  90
        evs  0,   0,   0,   1,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DARK, DARK ; type
        db 3 ; catch rate
        db 255 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 15 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/darkrai/front.dimensions"  
        db BAD_DREAMS, BAD_DREAMS     ; abilities
        db BAD_DREAMS    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
