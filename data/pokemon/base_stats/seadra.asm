	dw 00117 ;national dex no

        db  55,  65,  95,  85,  95,  45
        evs  0,   0,   1,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 75 ; catch rate
        db 154 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/seadra/front.dimensions"
        db POISON_POINT, SNIPER     ; abilities
        db DAMP    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
