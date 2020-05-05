	dw 00626 ;national dex no

        db  95, 110,  95,  55,  40,  95
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, NORMAL ; type
        db 45 ; catch rate
        db 172 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/bouffalant/front.dimensions"
        db RECKLESS, SAP_SIPPER     ; abilities
        db SOUNDPROOF    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
