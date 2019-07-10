	dw 00713 ;national dex no
        
        db  95, 117, 184,  28,  44,  46
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ICE, ICE ; type
        db 55 ; catch rate
        db 180 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/avalugg/front.dimensions"  
        db OWN_TEMPO, ICE_BODY     ; abilities
        db STURDY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end