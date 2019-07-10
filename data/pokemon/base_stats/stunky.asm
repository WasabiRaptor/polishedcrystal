	dw 00434 ;national dex no
        
        db  63,  63,  47,  74,  41,  41
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, DARK ; type
        db 225 ; catch rate
        db 66 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/stunky/front.dimensions"  
        db STENCH, AFTERMATH     ; abilities
        db KEEN_EYE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end