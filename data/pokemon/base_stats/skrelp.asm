	dw 00690 ;national dex no

        db  50,  60,  60,  30,  60,  60
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf

        db POISON, WATER ; type
        db 225 ; catch rate
        db 64 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/skrelp/front.dimensions"
        db POISON_POINT, POISON_TOUCH     ; abilities
        db ADAPTABILITY    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
