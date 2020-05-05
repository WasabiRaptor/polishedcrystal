	dw 00519 ;national dex no

        db  50,  55,  50,  43,  36,  30
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, FLYING ; type
        db 255 ; catch rate
        db 53 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pidove/front.dimensions"
        db BIG_PECKS, SUPER_LUCK     ; abilities
        db RIVALRY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FLYING ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
