	dw 00177 ;national dex no
        
        db  40,  50,  45,  70,  70,  45
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, FLYING ; type
        db 190 ; catch rate
        db 64 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/natu/front.dimensions"  
        db SYNCHRONIZE, EARLY_BIRD     ; abilities
        db MAGIC_BOUNCE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING, EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end