	dw 00743 ;national dex no
        
        db  60,  55,  60, 124,  95,  70
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, FAIRY ; type
        db 75 ; catch rate
        db 162 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/ribombee/front.dimensions"  
        db HONEY_GATHER, SHIELD_DUST     ; abilities
        db SWEET_VEIL    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG, EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end