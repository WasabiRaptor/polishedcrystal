	dw 00629 ;national dex no

        db  70,  55,  75,  60,  45,  65
        evs  0,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, FLYING ; type
        db 190 ; catch rate
        db 74 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn ALL_FEMALE, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/vullaby/front.dimensions"
        db BIG_PECKS, OVERCOAT     ; abilities
        db WEAK_ARMOR    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_FLYING ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
