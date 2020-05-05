	dw 00731 ;national dex no

        db  35,  75,  30,  65,  30,  30
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, FLYING ; type
        db 255 ; catch rate
        db 53 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/pikipek/front.dimensions"
        db KEEN_EYE, SKILL_LINK     ; abilities
        db PICKUP    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
