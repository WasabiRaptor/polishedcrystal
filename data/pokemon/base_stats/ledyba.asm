	dw 00165 ;national dex no

        db  40,  20,  30,  55,  40,  80
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf

        db BUG, FLYING ; type
        db 255 ; catch rate
        db 53 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/ledyba/front.dimensions"
        db SWARM, EARLY_BIRD     ; abilities
        db RATTLED    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_BUG ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
