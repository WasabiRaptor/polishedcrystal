	dw 00129 ;national dex no
        
        db  20,  10,  55,  80,  15,  20
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, WATER ; type
        db 255 ; catch rate
        db 40 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 1 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/magikarp/front.dimensions"  
        db SWIFT_SWIM, SWIFT_SWIM     ; abilities
        db RATTLED    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_2, EGG_DRAGON ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end