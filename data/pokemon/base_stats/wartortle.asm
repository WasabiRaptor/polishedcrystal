	dw 0000undefined ;national dex no
        
        db  59,  63,  80,  58,  65,  80
        evs  0,   0,   1,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 45 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/wartortle/front.dimensions"  
        db TORRENT, TORRENT     ; abilities
        db RAIN_DISH    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_WATER_1 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end