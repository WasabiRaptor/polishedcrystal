	dw 00undefined ;national dex no
        
        db  45, 100,  45,  10,  45,  45
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, GROUND ; type
        db 255 ; catch rate
        db 58 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/trapinch/front.dimensions"  
        db HYPER_CUTTER, ARENA_TRAP     ; abilities
        db SHEER_FORCE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end