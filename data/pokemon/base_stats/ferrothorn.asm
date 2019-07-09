	dw 00undefined ;national dex no
        
        db  74,  94, 131,  20,  54, 116
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, STEEL ; type
        db 90 ; catch rate
        db 171 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/ferrothorn/front.dimensions"  
        db IRON_BARBS, IRON_BARBS     ; abilities
        db ANTICIPATION    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GRASS, EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end