	dw 00582 ;national dex no
        
        db  36,  50,  50,  44,  65,  60
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ICE, ICE ; type
        db 255 ; catch rate
        db 61 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/vanillite/front.dimensions"  
        db ICE_BODY, SNOW_CLOAK     ; abilities
        db WEAK_ARMOR    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end