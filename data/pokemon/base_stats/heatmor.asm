	dw 00631 ;national dex no

        db  85,  97,  66,  65, 105,  66
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIRE, FIRE ; type
        db 90 ; catch rate
        db 169 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/heatmor/front.dimensions"
        db GLUTTONY, FLASH_FIRE     ; abilities
        db WHITE_SMOKE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
