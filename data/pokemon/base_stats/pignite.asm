	dw 00499 ;national dex no
        
        db  90,  93,  55,  55,  70,  55
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FIRE, FIGHTING ; type
        db 45 ; catch rate
        db 146 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pignite/front.dimensions"  
        db BLAZE, BLAZE     ; abilities
        db THICK_FAT    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end