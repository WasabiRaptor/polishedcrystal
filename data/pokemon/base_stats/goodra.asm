	dw 00706 ;national dex no

        db  90, 100,  70,  80, 110, 150
        evs  0,   0,   0,   0,   0,   3
        ;   hp  atk  def  spd  sat  sdf

        db DRAGON, DRAGON ; type
        db 45 ; catch rate
        db 270 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/goodra/front.dimensions"
        db SAP_SIPPER, HYDRATION     ; abilities
        db GOOEY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
