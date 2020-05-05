	dw 00618 ;national dex no

        db 109,  66,  84,  32,  81,  99
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GROUND, ELECTRIC ; type
        db 75 ; catch rate
        db 165 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/stunfisk/front.dimensions"
        db STATIC, LIMBER     ; abilities
        db SAND_VEIL    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_AMORPHOUS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
