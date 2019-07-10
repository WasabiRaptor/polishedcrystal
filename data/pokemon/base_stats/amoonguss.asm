	dw 00591 ;national dex no
        
        db 114,  85,  70,  30,  85,  80
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, POISON ; type
        db 75 ; catch rate
        db 162 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/amoonguss/front.dimensions"  
        db EFFECT_SPORE, EFFECT_SPORE     ; abilities
        db REGENERATOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end