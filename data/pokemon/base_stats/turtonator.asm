	dw 00undefined ;national dex no
        
        db  60,  78, 135,  36,  91,  85
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, DRAGON ; type
        db 70 ; catch rate
        db 170 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/turtonator/front.dimensions"  
        db SHELL_ARMOR, SHELL_ARMOR     ; abilities
        db SHELL_ARMOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end