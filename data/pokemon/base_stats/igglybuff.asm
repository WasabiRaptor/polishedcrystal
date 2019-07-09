	dw 00undefined ;national dex no
        
        db  90,  30,  15,  15,  40,  20
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FAIRY ; type
        db 170 ; catch rate
        db 42 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/igglybuff/front.dimensions"  
        db CUTE_CHARM, COMPETITIVE     ; abilities
        db FRIEND_GUARD    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end