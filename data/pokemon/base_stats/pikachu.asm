	dw 00025 ;national dex no
        
        db  35,  55,  40,  90,  50,  50
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db ELECTRIC, ELECTRIC ; type
        db 190 ; catch rate
        db 112 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pikachu/front.dimensions"  
        db STATIC, STATIC     ; abilities
        db LIGHTNING_ROD    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD, EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end