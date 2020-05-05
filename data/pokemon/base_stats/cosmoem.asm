	dw 00790 ;national dex no

        db  43,  29, 131,  37,  29, 131
        evs  0,   0,   1,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, PSYCHIC ; type
        db 45 ; catch rate
        db 140 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 24 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cosmoem/front.dimensions"
        db STURDY, STURDY     ; abilities
        db STURDY    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
