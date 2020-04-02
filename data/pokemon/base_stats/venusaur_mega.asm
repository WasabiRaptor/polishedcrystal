	dw 00003 ;national dex no
        
        db  80, 100, 123,  80, 122, 120
        evs  0,   0,   0,   0,   2,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, POISON ; type
        db 45 ; catch rate
        db 236 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/venusaur/front.dimensions"  
        db THICK_FAT, THICK_FAT     ; abilities
        db THICK_FAT    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
