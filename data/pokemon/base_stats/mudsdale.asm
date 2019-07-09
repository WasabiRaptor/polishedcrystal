	dw 00undefined ;national dex no
        
        db 100, 125, 100,  35,  55,  85
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, GROUND ; type
        db 60 ; catch rate
        db 175 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/mudsdale/front.dimensions"  
        db OWN_TEMPO, STAMINA     ; abilities
        db INNER_FOCUS    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end