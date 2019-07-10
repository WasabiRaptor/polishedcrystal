	dw 00632 ;national dex no
        
        db  58, 109, 112, 109,  48,  48
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, STEEL ; type
        db 90 ; catch rate
        db 169 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/durant/front.dimensions"  
        db SWARM, HUSTLE     ; abilities
        db TRUANT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end