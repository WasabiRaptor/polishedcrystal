	dw 00802 ;national dex no
        
        db  90, 125,  80, 125,  90,  90
        evs  0,   2,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIGHTING, GHOST ; type
        db 3 ; catch rate
        db 255 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 15 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/marshadow/front.dimensions"  
        db TECHNICIAN, TECHNICIAN     ; abilities
        db TECHNICIAN    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end