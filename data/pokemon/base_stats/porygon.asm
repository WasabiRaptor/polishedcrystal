	dw 00undefined ;national dex no
        
        db  65,  60,  70,  40,  85,  75
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 45 ; catch rate
        db 79 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/porygon/front.dimensions"  
        db TRACE, DOWNLOAD     ; abilities
        db ANALYTIC    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end