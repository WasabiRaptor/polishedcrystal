
    dw 00097 ;national dex no

    db  85,  73,  70,  67,  73, 115
    evs  0,   0,   0,   0,   0,   2
    ;   hp  atk  def  spd  sat  sdf

    db PSYCHIC, PSYCHIC ; type
    db 75 ; catch rate
    db 169 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/hypno/front.dimensions"
    db INSOMNIA, FOREWARN     ; abilities
    db INNER_FOCUS    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_HUMAN_LIKE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
