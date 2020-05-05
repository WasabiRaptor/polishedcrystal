	dw 00050 ;national dex no

        db  10,  55,  25,  95,  35,  45
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GROUND, GROUND ; type
        db 255 ; catch rate
        db 53 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/diglett/front.dimensions"
        db SAND_VEIL, ARENA_TRAP     ; abilities
        db SAND_FORCE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
