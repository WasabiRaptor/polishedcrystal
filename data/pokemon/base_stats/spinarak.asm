	dw 00167 ;national dex no
        
        db  40,  60,  40,  30,  40,  40
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db BUG, POISON ; type
        db 255 ; catch rate
        db 50 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/spinarak/front.dimensions"  
        db SWARM, INSOMNIA     ; abilities
        db SNIPER    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_BUG, EGG_BUG ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end