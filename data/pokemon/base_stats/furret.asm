	dw 00162 ;national dex no

        db  85,  76,  64,  90,  45,  55
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, NORMAL ; type
        db 90 ; catch rate
        db 145 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/furret/front.dimensions"
        db RUN_AWAY, KEEN_EYE     ; abilities
        db FRISK    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
