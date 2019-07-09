	dw 00undefined ;national dex no
        
        db  95, 130,  80,  50,  70,  80
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ICE, ICE ; type
        db 60 ; catch rate
        db 177 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/beartic/front.dimensions"  
        db SNOW_CLOAK, SLUSH_RUSH     ; abilities
        db SWIFT_SWIM    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end