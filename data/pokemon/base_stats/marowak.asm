	dw 00undefined ;national dex no
        
        db  60,  80, 110,  45,  50,  80
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db GROUND, GROUND ; type
        db 75 ; catch rate
        db 149 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/marowak/front.dimensions"  
        db ROCK_HEAD, LIGHTNING_ROD     ; abilities
        db BATTLE_ARMOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end