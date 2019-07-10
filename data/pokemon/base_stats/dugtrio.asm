	dw 00051 ;national dex no
        
        db  35, 100,  50, 120,  50,  70
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, GROUND ; type
        db 50 ; catch rate
        db 149 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/dugtrio/front.dimensions"  
        db SAND_VEIL, ARENA_TRAP     ; abilities
        db SAND_FORCE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end