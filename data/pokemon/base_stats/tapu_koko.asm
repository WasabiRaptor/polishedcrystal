	dw 00785 ;national dex no
        
        db  70, 115,  85, 130,  95,  75
        evs  0,   0,   0,   3,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, FAIRY ; type
        db 3 ; catch rate
        db 257 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/tapu_koko/front.dimensions"  
        db ELECTRIC_SURGE, ELECTRIC_SURGE     ; abilities
        db TELEPATHY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end