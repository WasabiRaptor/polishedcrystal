	dw 00478 ;national dex no
        
        db  70,  80,  70, 110,  80,  70
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ICE, GHOST ; type
        db 75 ; catch rate
        db 168 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/froslass/front.dimensions"  
        db SNOW_CLOAK, SNOW_CLOAK     ; abilities
        db CURSED_BODY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FAIRY, EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end