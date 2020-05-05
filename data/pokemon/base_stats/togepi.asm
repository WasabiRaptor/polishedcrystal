	dw 00175 ;national dex no

        db  35,  20,  65,  20,  40,  65
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf

        db FAIRY, FAIRY ; type
        db 190 ; catch rate
        db 49 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/togepi/front.dimensions"
        db HUSTLE, SERENE_GRACE     ; abilities
        db SUPER_LUCK    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
