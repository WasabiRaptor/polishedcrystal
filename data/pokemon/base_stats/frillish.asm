	dw 00592 ;national dex no
        
        db  55,  40,  50,  40,  65,  85
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, GHOST ; type
        db 190 ; catch rate
        db 67 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/frillish/front.dimensions"  
        db WATER_ABSORB, CURSED_BODY     ; abilities
        db DAMP    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_AMORPHOUS, EGG_AMORPHOUS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end