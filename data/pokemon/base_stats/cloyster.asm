	dw 000undefined ;national dex no
        
        db  50,  95, 180,  70,  85,  45
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, ICE ; type
        db 60 ; catch rate
        db 184 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cloyster/front.dimensions"  
        db SHELL_ARMOR, SKILL_LINK     ; abilities
        db OVERCOAT    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_3 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end