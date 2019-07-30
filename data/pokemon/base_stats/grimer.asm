	dw 00088 ;national dex no
        
        db  80,  80,  50,  25,  40,  50
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, POISON ; type
        db 190 ; catch rate
        db 65 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/grimer/front.dimensions"  
        db STENCH, STICKY_HOLD     ; abilities
        db POISON_TOUCH    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end