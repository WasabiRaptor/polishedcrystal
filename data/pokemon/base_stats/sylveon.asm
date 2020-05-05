	dw 00700 ;national dex no

        db  95,  65,  65,  60, 110, 130
        evs  0,   0,   0,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf

        db FAIRY, FAIRY ; type
        db 45 ; catch rate
        db 184 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 7 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/sylveon/front.dimensions"
        db CUTE_CHARM, CUTE_CHARM     ; abilities
        db PIXILATE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
