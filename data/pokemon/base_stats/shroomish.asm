	dw 00285 ;national dex no
        
        db  60,  40,  60,  35,  40,  60
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 255 ; catch rate
        db 59 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/shroomish/front.dimensions"  
        db EFFECT_SPORE, POISON_HEAL     ; abilities
        db QUICK_FEET    ; hidden ability
        db GROWTH_FLUCTUATING ; growth rate
        dn EGG_FAIRY, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end