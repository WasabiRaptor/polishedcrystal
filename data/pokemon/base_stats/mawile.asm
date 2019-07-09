	dw 00undefined ;national dex no
        
        db  50,  85,  85,  50,  55,  55
        evs  0,   1,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db STEEL, FAIRY ; type
        db 45 ; catch rate
        db 133 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/mawile/front.dimensions"  
        db HYPER_CUTTER, INTIMIDATE     ; abilities
        db SHEER_FORCE    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FIELD, EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end