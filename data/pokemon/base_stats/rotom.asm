	dw 00479 ;national dex no

        db  50,  50,  77,  91,  95,  77
        evs  0,   0,   0,   1,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db ELECTRIC, GHOST ; type
        db 45 ; catch rate
        db 154 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/rotom/front.dimensions"
        db LEVITATE, LEVITATE     ; abilities
        db LEVITATE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_AMORPHOUS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
