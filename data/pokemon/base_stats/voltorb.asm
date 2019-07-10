	dw 00100 ;national dex no
        
        db  40,  30,  50, 100,  55,  55
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 190 ; catch rate
        db 66 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/voltorb/front.dimensions"  
        db SOUNDPROOF, STATIC     ; abilities
        db AFTERMATH    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL, EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end