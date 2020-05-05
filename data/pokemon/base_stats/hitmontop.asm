	dw 00237 ;national dex no

        db  50,  95,  95,  70,  35, 110
        evs  0,   0,   0,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf

        db FIGHTING, FIGHTING ; type
        db 45 ; catch rate
        db 159 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_MALE, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/hitmontop/front.dimensions"
        db INTIMIDATE, TECHNICIAN     ; abilities
        db STEADFAST    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMAN_LIKE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
