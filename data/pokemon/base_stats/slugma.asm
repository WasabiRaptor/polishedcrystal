	dw 00218 ;national dex no

        db  40,  40,  40,  20,  70,  40
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIRE, FIRE ; type
        db 190 ; catch rate
        db 50 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/slugma/front.dimensions"
        db MAGMA_ARMOR, FLAME_BODY     ; abilities
        db WEAK_ARMOR    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_AMORPHOUS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
