	dw 00371 ;national dex no

        db  45,  75,  60,  50,  40,  30
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DRAGON, DRAGON ; type
        db 45 ; catch rate
        db 60 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 8 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/bagon/front.dimensions"
        db ROCK_HEAD, ROCK_HEAD     ; abilities
        db SHEER_FORCE    ; hidden ability
        db GROWTH_SLOW ; growth rate
        dn EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
