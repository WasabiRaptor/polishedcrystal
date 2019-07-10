	dw 00739 ;national dex no
        
        db  47,  82,  57,  63,  42,  47
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIGHTING, FIGHTING ; type
        db 225 ; catch rate
        db 68 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/crabrawler/front.dimensions"  
        db HYPER_CUTTER, IRON_FIST     ; abilities
        db ANGER_POINT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_3 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end