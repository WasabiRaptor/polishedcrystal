	dw 00089 ;national dex no
        
        db 105, 105,  75,  50,  65, 100
        evs  1,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, POISON ; type
        db 75 ; catch rate
        db 175 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/muk/front.dimensions"  
        db STENCH, STICKY_HOLD     ; abilities
        db POISON_TOUCH    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end