	dw 00502 ;national dex no

        db  75,  75,  60,  60,  83,  60
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 45 ; catch rate
        db 145 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_12_5, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/dewott/front.dimensions"
        db TORRENT, TORRENT     ; abilities
        db SHELL_ARMOR    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
