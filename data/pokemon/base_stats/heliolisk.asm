	dw 00695 ;national dex no
        
        db  62,  55,  52, 109, 109,  94
        evs  0,   0,   0,   1,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, NORMAL ; type
        db 75 ; catch rate
        db 168 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/heliolisk/front.dimensions"  
        db DRY_SKIN, SAND_VEIL     ; abilities
        db SOLAR_POWER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end