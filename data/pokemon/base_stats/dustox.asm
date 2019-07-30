	dw 00269 ;national dex no
        
        db  60,  50,  70,  65,  50,  90
        evs  0,   0,   0,   0,   0,   3
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, POISON ; type
        db 45 ; catch rate
        db 173 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/dustox/front.dimensions"  
        db SHIELD_DUST, SHIELD_DUST     ; abilities
        db COMPOUND_EYES    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_BUG, EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end