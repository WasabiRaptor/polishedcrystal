	dw 00459 ;national dex no
        
        db  60,  62,  50,  40,  62,  60
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GRASS, ICE ; type
        db 120 ; catch rate
        db 67 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/snover/front.dimensions"  
        db SNOW_WARNING, SNOW_WARNING     ; abilities
        db SOUNDPROOF    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_MONSTER, EGG_GRASS ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end