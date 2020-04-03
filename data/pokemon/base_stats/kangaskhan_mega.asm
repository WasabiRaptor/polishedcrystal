	dw 00115 ;national dex no
        
        db 105, 125, 100, 100,  60, 100
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 45 ; catch rate
        db 172 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/kangaskhan/front.dimensions"  
        db PARENTAL_BOND, PARENTAL_BOND     ; abilities
        db PARENTAL_BOND    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER,  EGG_MONSTER ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end
