	dw 00310 ;national dex no
        
        db  70,  75,  60, 105, 105,  60
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 45 ; catch rate
        db 166 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/manectric/front.dimensions"  
        db STATIC, LIGHTNING_ROD     ; abilities
        db MINUS    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end