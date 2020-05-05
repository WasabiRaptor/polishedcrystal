	dw 00311 ;national dex no

        db  60,  50,  40,  95,  85,  75
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ELECTRIC, ELECTRIC ; type
        db 200 ; catch rate
        db 142 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/plusle/front.dimensions"
        db PLUS, PLUS     ; abilities
        db LIGHTNING_ROD    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FAIRY ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
