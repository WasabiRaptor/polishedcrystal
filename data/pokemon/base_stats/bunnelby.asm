	dw 00659 ;national dex no

        db  38,  36,  38,  57,  32,  36
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, NORMAL ; type
        db 255 ; catch rate
        db 47 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 3 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/bunnelby/front.dimensions"
        db PICKUP, CHEEK_POUCH     ; abilities
        db HUGE_POWER    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
