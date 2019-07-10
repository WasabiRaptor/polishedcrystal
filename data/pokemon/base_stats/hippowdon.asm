	dw 00450 ;national dex no
        
        db 108, 112, 118,  47,  68,  72
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, GROUND ; type
        db 60 ; catch rate
        db 184 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 6 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/hippowdon/front.dimensions"  
        db SAND_STREAM, SAND_STREAM     ; abilities
        db SAND_FORCE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end