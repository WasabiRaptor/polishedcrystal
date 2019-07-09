	dw 00undefined ;national dex no
        
        db  65,  80,  65,  60,  35,  65
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 120 ; catch rate
        db 130 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/herdier/front.dimensions"  
        db INTIMIDATE, SAND_RUSH     ; abilities
        db SCRAPPY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end