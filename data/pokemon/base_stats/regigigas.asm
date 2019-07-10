	dw 00486 ;national dex no
        
        db 110, 160, 110, 100,  80, 110
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 3 ; catch rate
        db 302 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/regigigas/front.dimensions"  
        db SLOW_START, SLOW_START     ; abilities
        db SLOW_START    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end