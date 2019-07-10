	dw 00579 ;national dex no
        
        db 110,  65,  75,  30, 125,  85
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, PSYCHIC ; type
        db 50 ; catch rate
        db 221 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/reuniclus/front.dimensions"  
        db OVERCOAT, MAGIC_GUARD     ; abilities
        db REGENERATOR    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end