	dw 00613 ;national dex no
        
        db  55,  70,  40,  40,  60,  40
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ICE, ICE ; type
        db 120 ; catch rate
        db 61 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cubchoo/front.dimensions"  
        db SNOW_CLOAK, SLUSH_RUSH     ; abilities
        db RATTLED    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end