	dw 00325 ;national dex no
        
        db  60,  25,  35,  60,  70,  80
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, PSYCHIC ; type
        db 255 ; catch rate
        db 66 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/spoink/front.dimensions"  
        db THICK_FAT, OWN_TEMPO     ; abilities
        db GLUTTONY    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end