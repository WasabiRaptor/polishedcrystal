	dw 00649 ;national dex no

        db  71, 120,  95,  99, 120,  95
        evs  0,   1,   0,   1,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db BUG, STEEL ; type
        db 3 ; catch rate
        db 270 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/genesect/front.dimensions"
        db DOWNLOAD, DOWNLOAD     ; abilities
        db DOWNLOAD    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
