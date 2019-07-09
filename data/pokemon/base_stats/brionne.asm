	dw 00undefined ;national dex no
        
        db  60,  69,  69,  50,  91,  81
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 45 ; catch rate
        db 147 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/brionne/front.dimensions"  
        db TORRENT, TORRENT     ; abilities
        db LIQUID_VOICE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end