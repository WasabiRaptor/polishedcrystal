	dw 00undefined ;national dex no
        
        db  50,  50,  62,  65,  40,  62
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db POISON, POISON ; type
        db 190 ; catch rate
        db 66 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/trubbish/front.dimensions"  
        db STENCH, STICKY_HOLD     ; abilities
        db AFTERMATH    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end