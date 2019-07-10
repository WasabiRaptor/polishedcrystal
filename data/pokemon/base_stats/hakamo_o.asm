	dw 00783 ;national dex no
        
        db  55,  75,  90,  65,  65,  70
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db DRAGON, FIGHTING ; type
        db 45 ; catch rate
        db 147 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/hakamo_o/front.dimensions"  
        db BULLETPROOF, SOUNDPROOF     ; abilities
        db OVERCOAT    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end