	dw 00163 ;national dex no
        
        db  60,  30,  30,  50,  36,  56
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 255 ; catch rate
        db 52 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/hoothoot/front.dimensions"  
        db INSOMNIA, KEEN_EYE     ; abilities
        db TINTED_LENS    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING, EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end