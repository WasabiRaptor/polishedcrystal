	dw 00173 ;national dex no

        db  50,  25,  28,  15,  45,  55
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf

        db FAIRY, FAIRY ; type
        db 150 ; catch rate
        db 44 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cleffa/front.dimensions"
        db CUTE_CHARM, MAGIC_GUARD     ; abilities
        db FRIEND_GUARD    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
