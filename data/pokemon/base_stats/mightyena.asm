	dw 00262 ;national dex no

        db  70,  90,  70,  70,  60,  60
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, DARK ; type
        db 127 ; catch rate
        db 147 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/mightyena/front.dimensions"
        db INTIMIDATE, QUICK_FEET     ; abilities
        db MOXIE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
