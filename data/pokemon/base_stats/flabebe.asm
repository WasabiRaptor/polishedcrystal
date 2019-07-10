	dw 00669 ;national dex no
        
        db  44,  38,  39,  42,  61,  79
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db FAIRY, FAIRY ; type
        db 225 ; catch rate
        db 61 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/flabebe/front.dimensions"  
        db FLOWER_VEIL, FLOWER_VEIL     ; abilities
        db SYMBIOSIS    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FAIRY, EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end