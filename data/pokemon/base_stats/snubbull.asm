	dw 00209 ;national dex no
        
        db  60,  80,  50,  30,  40,  40
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FAIRY, FAIRY ; type
        db 190 ; catch rate
        db 60 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/snubbull/front.dimensions"  
        db INTIMIDATE, RUN_AWAY     ; abilities
        db RATTLED    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FIELD, EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end