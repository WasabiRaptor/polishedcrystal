	dw 00undefined ;national dex no
        
        db  60,  85,  40,  68,  30,  45
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, GROUND ; type
        db 120 ; catch rate
        db 66 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/drilbur/front.dimensions"  
        db SAND_RUSH, SAND_FORCE     ; abilities
        db MOLD_BREAKER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end