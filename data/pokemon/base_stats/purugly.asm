	dw 00432 ;national dex no
        
        db  71,  82,  64, 112,  64,  59
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 75 ; catch rate
        db 158 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/purugly/front.dimensions"  
        db THICK_FAT, OWN_TEMPO     ; abilities
        db DEFIANT    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end