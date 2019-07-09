	dw 00undefined ;national dex no
        
        db 100, 100, 100, 100, 100, 100
        evs  3,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db PSYCHIC, FIRE ; type
        db 3 ; catch rate
        db 270 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/victini/front.dimensions"  
        db VICTORY_STAR, VICTORY_STAR     ; abilities
        db VICTORY_STAR    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end