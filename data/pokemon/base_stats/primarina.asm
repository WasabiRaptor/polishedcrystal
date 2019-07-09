	dw 00undefined ;national dex no
        
        db  80,  74,  74,  60, 126, 116
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, FAIRY ; type
        db 45 ; catch rate
        db 239 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/primarina/front.dimensions"  
        db TORRENT, TORRENT     ; abilities
        db LIQUID_VOICE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end