	dw 00023 ;national dex no
        
        db  35,  60,  44,  55,  40,  54
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, POISON ; type
        db 255 ; catch rate
        db 58 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/ekans/front.dimensions"  
        db INTIMIDATE, SHED_SKIN     ; abilities
        db UNNERVE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end