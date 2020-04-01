	dw 00421 ;national dex no
        
        db  70,  60,  70,  85,  87,  78
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 75 ; catch rate
        db 158 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cherrim/front.dimensions"  
        db FLOWER_GIFT, FLOWER_GIFT     ; abilities
        db FLOWER_GIFT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FAIRY, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end