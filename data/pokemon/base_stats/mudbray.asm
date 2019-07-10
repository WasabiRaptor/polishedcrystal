	dw 00749 ;national dex no
        
        db  70, 100,  70,  45,  45,  55
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, GROUND ; type
        db 190 ; catch rate
        db 77 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/mudbray/front.dimensions"  
        db OWN_TEMPO, STAMINA     ; abilities
        db INNER_FOCUS    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end