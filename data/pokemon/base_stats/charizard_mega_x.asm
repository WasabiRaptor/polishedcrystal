        dw 00006 ;national dex no
        
        db  78, 130, 111, 100, 130,  85
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, DRAGON ; type
        db 45 ; catch rate
        db 240 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/charizard/front.dimensions"  
        db TOUGH_CLAWS, TOUGH_CLAWS     ; abilities
        db TOUGH_CLAWS    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
