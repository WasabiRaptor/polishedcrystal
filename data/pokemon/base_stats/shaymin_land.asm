	dw 00492 ;national dex no
        
        db 100, 100, 100, 100, 100, 100
        evs  3,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, GRASS ; type
        db 45 ; catch rate
        db 270 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/shaymin_land/front.dimensions"  
        db NATURAL_CURE, NATURAL_CURE     ; abilities
        db NATURAL_CURE    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end