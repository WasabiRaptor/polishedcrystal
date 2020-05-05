	dw 00435 ;national dex no

        db 103,  93,  67,  84,  71,  61
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db POISON, DARK ; type
        db 60 ; catch rate
        db 168 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/skuntank/front.dimensions"
        db STENCH, AFTERMATH     ; abilities
        db KEEN_EYE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
