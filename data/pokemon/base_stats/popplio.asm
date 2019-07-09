	dw 00undefined ;national dex no
        
        db  50,  54,  54,  40,  66,  56
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 45 ; catch rate
        db 64 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/popplio/front.dimensions"  
        db TORRENT, TORRENT     ; abilities
        db LIQUID_VOICE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end