	dw 00190 ;national dex no
        
        db  55,  70,  55,  85,  40,  55
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db NORMAL, NORMAL ; type
        db 45 ; catch rate
        db 72 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/aipom/front.dimensions"  
        db RUN_AWAY, PICKUP     ; abilities
        db SKILL_LINK    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FIELD, EGG_FIELD ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end