	dw 00599 ;national dex no

        db  40,  55,  70,  30,  45,  60
        evs  0,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db STEEL, STEEL ; type
        db 130 ; catch rate
        db 60 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn GENDERLESS, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/klink/front.dimensions"
        db PLUS, MINUS     ; abilities
        db CLEAR_BODY    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_MINERAL ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
