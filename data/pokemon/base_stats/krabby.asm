	dw 000undefined ;national dex no
        
        db  30, 105,  90,  50,  25,  25
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 225 ; catch rate
        db 65 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/krabby/front.dimensions"  
        db HYPER_CUTTER, SHELL_ARMOR     ; abilities
        db SHEER_FORCE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_3 ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end