	dw 00466 ;national dex no

        db  75, 123,  67,  95,  95,  85
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ELECTRIC, ELECTRIC ; type
        db 30 ; catch rate
        db 243 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_25, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/electivire/front.dimensions"
        db MOTOR_DRIVE, MOTOR_DRIVE     ; abilities
        db VITAL_SPIRIT    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMAN_LIKE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
