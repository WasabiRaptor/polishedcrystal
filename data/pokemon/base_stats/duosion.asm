	dw 00undefined ;national dex no
        
        db  65,  40,  50,  30, 125,  60
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, PSYCHIC ; type
        db 100 ; catch rate
        db 130 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/duosion/front.dimensions"  
        db OVERCOAT, MAGIC_GUARD     ; abilities
        db REGENERATOR    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end