	dw 00172 ;national dex no
        
        db  20,  40,  15,  60,  35,  35
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 190 ; catch rate
        db 41 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pichu/front.dimensions"  
        db STATIC, STATIC     ; abilities
        db LIGHTNING_ROD    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end