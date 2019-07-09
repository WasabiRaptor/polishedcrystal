	dw 00undefined ;national dex no
        
        db  90,  50,  34,  70,  60,  44
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GHOST, FLYING ; type
        db 125 ; catch rate
        db 70 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 6 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/drifloon/front.dimensions"  
        db AFTERMATH, UNBURDEN     ; abilities
        db FLARE_BOOST    ; hidden ability
        db GROWTH_FLUCTUATING ; growth rate
        dn EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end