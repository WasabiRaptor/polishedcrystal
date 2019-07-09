	dw 00undefined ;national dex no
        
        db 104,  91,  63,  68,  91,  73
        evs  3,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 45 ; catch rate
        db 221 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/exploud/front.dimensions"  
        db SOUNDPROOF, SOUNDPROOF     ; abilities
        db SCRAPPY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MONSTER, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end