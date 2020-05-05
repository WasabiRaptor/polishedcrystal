	dw 00698 ;national dex no

        db  77,  59,  50,  46,  67,  63
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ROCK, ICE ; type
        db 45 ; catch rate
        db 72 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 6 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/amaura/front.dimensions"
        db REFRIGERATE, REFRIGERATE     ; abilities
        db SNOW_WARNING    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
