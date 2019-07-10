	dw 00475 ;national dex no
        
        db  68, 125,  65,  80,  65, 115
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, FIGHTING ; type
        db 45 ; catch rate
        db 233 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_MALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/gallade/front.dimensions"  
        db STEADFAST, STEADFAST     ; abilities
        db JUSTIFIED    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end