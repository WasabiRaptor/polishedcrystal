	dw 00440 ;national dex no
        
        db 100,   5,   5,  30,  15,  65
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 130 ; catch rate
        db 110 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/happiny/front.dimensions"  
        db NATURAL_CURE, SERENE_GRACE     ; abilities
        db FRIEND_GUARD    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end