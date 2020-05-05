	dw 00420 ;national dex no

        db  45,  35,  45,  35,  62,  53
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db GRASS, GRASS ; type
        db 190 ; catch rate
        db 55 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cherubi/front.dimensions"
        db CHLOROPHYLL, CHLOROPHYLL     ; abilities
        db CHLOROPHYLL    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FAIRY, EGG_GRASS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
