
    dw 00620 ;national dex no

    db  65, 125,  60, 105,  95,  60
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIGHTING, FIGHTING ; type
    db 45 ; catch rate
    db 179 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/mienshao/front.dimensions"
    db INNER_FOCUS, REGENERATOR     ; abilities
    db RECKLESS    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
