	dw 00281 ;national dex no
        
        db  38,  35,  35,  50,  65,  55
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, FAIRY ; type
        db 120 ; catch rate
        db 97 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/kirlia/front.dimensions"  
        db SYNCHRONIZE, TRACE     ; abilities
        db TELEPATHY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end