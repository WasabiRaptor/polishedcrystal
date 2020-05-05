	dw 00150 ;national dex no

        db 106, 150,  70, 140, 194, 120
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, PSYCHIC ; type
        db 3 ; catch rate
        db 255 ; base exp
        db NO_ITEM, NO_ITEM ; items

        INCBIN "gfx/pokemon/mewtwo/front.dimensions"
        db INSOMNIA, INSOMNIA     ; abilities
        db INSOMNIA    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
