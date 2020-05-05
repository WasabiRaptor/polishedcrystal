	dw 00681 ;national dex no

        db  60,  50, 150,  60,  50, 150
        evs  0,   0,   2,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf

        db STEEL, GHOST ; type
        db 45 ; catch rate
        db 234 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/aegislash_shield/front.dimensions"
        db STANCE_CHANGE, STANCE_CHANGE     ; abilities
        db STANCE_CHANGE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
