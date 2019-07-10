	dw 00476 ;national dex no
        
        db  60,  55, 145,  40,  75, 150
        evs  0,   0,   1,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf
        
        db ROCK, STEEL ; type
        db 60 ; catch rate
        db 184 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/probopass/front.dimensions"  
        db STURDY, MAGNET_PULL     ; abilities
        db SAND_FORCE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL, EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end