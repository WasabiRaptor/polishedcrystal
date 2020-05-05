	dw 00230 ;national dex no

        db  75,  95,  95,  85,  95,  95
        evs  0,   1,   0,   0,   1,   1
        ;   hp  atk  def  spd  sat  sdf

        db WATER, DRAGON ; type
        db 45 ; catch rate
        db 243 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/kingdra/front.dimensions"
        db SWIFT_SWIM, SNIPER     ; abilities
        db DAMP    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
