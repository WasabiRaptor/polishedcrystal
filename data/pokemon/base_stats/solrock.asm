	dw 00338 ;national dex no

        db  90,  95,  85,  70,  55,  65
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ROCK, PSYCHIC ; type
        db 45 ; catch rate
        db 161 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/solrock/front.dimensions"
        db LEVITATE, LEVITATE     ; abilities
        db LEVITATE    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_MINERAL ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
