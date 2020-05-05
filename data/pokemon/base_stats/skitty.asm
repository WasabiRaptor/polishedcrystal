	dw 00300 ;national dex no

        db  50,  45,  45,  50,  35,  35
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, NORMAL ; type
        db 255 ; catch rate
        db 52 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/skitty/front.dimensions"
        db CUTE_CHARM, NORMALIZE     ; abilities
        db WONDER_SKIN    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FIELD, EGG_FAIRY ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
