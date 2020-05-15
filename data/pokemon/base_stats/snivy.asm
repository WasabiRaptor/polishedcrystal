
    dw 00495 ;national dex no

    db  45,  45,  55,  63,  45,  55
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 45 ; catch rate
    db 62 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/snivy/front.dimensions"
    db OVERGROW, OVERGROW     ; abilities
    db CONTRARY    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD, EGG_GRASS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
