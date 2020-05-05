	dw 00206 ;national dex no

        db 100,  70,  70,  45,  65,  65
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, NORMAL ; type
        db 190 ; catch rate
        db 145 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/dunsparce/front.dimensions"
        db SERENE_GRACE, RUN_AWAY     ; abilities
        db RATTLED    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FIELD ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
