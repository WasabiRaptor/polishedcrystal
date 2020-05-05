	dw 00178 ;national dex no

        db  65,  75,  70,  95,  95,  70
        evs  0,   0,   0,   1,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC, FLYING ; type
        db 75 ; catch rate
        db 165 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/xatu/front.dimensions"
        db SYNCHRONIZE, EARLY_BIRD     ; abilities
        db MAGIC_BOUNCE    ; hidden ability
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
