	dw 0000undefined ;national dex no
        
        db  78,  84,  78, 100, 109,  85
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, FLYING ; type
        db 45 ; catch rate
        db 240 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/charizard/front.dimensions"  
        db BLAZE, BLAZE     ; abilities
        db SOLAR_POWER    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end