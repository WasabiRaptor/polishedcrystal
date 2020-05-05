	dw 00683 ;national dex no

        db 101,  72,  72,  29,  99,  89
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db FAIRY, FAIRY ; type
        db 140 ; catch rate
        db 162 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/aromatisse/front.dimensions"
        db HEALER, HEALER     ; abilities
        db AROMA_VEIL    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FAIRY ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
