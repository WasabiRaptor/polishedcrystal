	dw 00657 ;national dex no
        
        db  54,  63,  52,  97,  83,  56
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 45 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/frogadier/front.dimensions"  
        db TORRENT, TORRENT     ; abilities
        db PROTEAN    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_WATER_1, EGG_WATER_1 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end