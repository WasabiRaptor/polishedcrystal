	dw 00040 ;national dex no
        
        db 140,  70,  45,  45,  85,  50
        evs  3,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FAIRY ; type
        db 50 ; catch rate
        db 196 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/wigglytuff/front.dimensions"  
        db CUTE_CHARM, COMPETITIVE     ; abilities
        db FRISK    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FAIRY, EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end