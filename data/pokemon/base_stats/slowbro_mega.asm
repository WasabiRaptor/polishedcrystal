	dw 00080 ;national dex no
        
        db  95,  75, 180,  30, 130,  80
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, PSYCHIC ; type
        db 75 ; catch rate
        db 172 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/slowbro/front.dimensions"  
        db SHELL_ARMOR, SHELL_ARMOR     ; abilities
        db SHELL_ARMOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER, EGG_WATER_1 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
