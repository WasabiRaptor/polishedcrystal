	dw 00572 ;national dex no
        
        db  55,  50,  40,  75,  40,  40
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 255 ; catch rate
        db 60 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/minccino/front.dimensions"  
        db CUTE_CHARM, TECHNICIAN     ; abilities
        db SKILL_LINK    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end