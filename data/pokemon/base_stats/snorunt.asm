	dw 00361 ;national dex no
        
        db  50,  50,  50,  50,  50,  50
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ICE, ICE ; type
        db 190 ; catch rate
        db 60 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/snorunt/front.dimensions"  
        db INNER_FOCUS, ICE_BODY     ; abilities
        db MOODY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FAIRY, EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end