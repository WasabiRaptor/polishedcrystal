	dw 00undefined ;national dex no
        
        db  61,  78,  95,  57,  56,  58
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 45 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/quilladin/front.dimensions"  
        db OVERGROW, OVERGROW     ; abilities
        db BULLETPROOF    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end