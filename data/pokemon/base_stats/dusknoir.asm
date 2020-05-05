	dw 00477 ;national dex no

        db  45, 100, 135,  45,  65, 135
        evs  0,   0,   1,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf

        db GHOST, GHOST ; type
        db 45 ; catch rate
        db 236 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/dusknoir/front.dimensions"
        db PRESSURE, PRESSURE     ; abilities
        db FRISK    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_AMORPHOUS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
