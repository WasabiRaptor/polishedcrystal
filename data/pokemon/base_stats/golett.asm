	dw 00622 ;national dex no
        
        db  59,  74,  50,  35,  35,  50
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, GHOST ; type
        db 190 ; catch rate
        db 61 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/golett/front.dimensions"  
        db IRON_FIST, KLUTZ     ; abilities
        db NO_GUARD    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL, EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end