	dw 00054 ;national dex no

        db  50,  52,  48,  55,  65,  50
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 190 ; catch rate
        db 64 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/psyduck/front.dimensions"
        db DAMP, CLOUD_NINE     ; abilities
        db SWIFT_SWIM    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
