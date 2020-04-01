	dw 00627 ;national dex no
        
        db  70,  83,  50,  60,  37,  50
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, FLYING ; type
        db 190 ; catch rate
        db 70 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_MALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/rufflet/front.dimensions"  
        db KEEN_EYE, SHEER_FORCE     ; abilities
        db HUSTLE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FLYING, EGG_FLYING ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end