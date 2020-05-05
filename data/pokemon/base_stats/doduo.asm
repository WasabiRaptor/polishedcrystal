	dw 00084 ;national dex no

        db  35,  85,  45,  75,  35,  35
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, FLYING ; type
        db 190 ; catch rate
        db 62 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/doduo/front.dimensions"
        db RUN_AWAY, EARLY_BIRD     ; abilities
        db TANGLED_FEET    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
