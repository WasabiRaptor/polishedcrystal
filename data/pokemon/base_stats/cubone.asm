	dw 00104 ;national dex no

        db  50,  50,  95,  35,  40,  50
        evs  0,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GROUND, GROUND ; type
        db 190 ; catch rate
        db 64 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/cubone/front.dimensions"
        db ROCK_HEAD, LIGHTNING_ROD     ; abilities
        db BATTLE_ARMOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
