	dw 000undefined ;national dex no
        
        db  95,  70,  73,  60,  95,  90
        evs  3,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FAIRY, FAIRY ; type
        db 25 ; catch rate
        db 217 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/clefable/front.dimensions"  
        db CUTE_CHARM, MAGIC_GUARD     ; abilities
        db UNAWARE    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end