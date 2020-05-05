	dw 00455 ;national dex no

        db  74, 100,  72,  46,  90,  72
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GRASS, GRASS ; type
        db 200 ; catch rate
        db 159 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 5 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/carnivine/front.dimensions"
        db LEVITATE, LEVITATE     ; abilities
        db LEVITATE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_GRASS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
