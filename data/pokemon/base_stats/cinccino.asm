	dw 00573 ;national dex no
        
        db  75,  95,  60, 115,  65,  60
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 60 ; catch rate
        db 165 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cinccino/front.dimensions"  
        db CUTE_CHARM, TECHNICIAN     ; abilities
        db SKILL_LINK    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end