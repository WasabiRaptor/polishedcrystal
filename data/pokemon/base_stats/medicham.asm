
    dw 00308 ;national dex no

    db  60,  60,  75,  80,  60,  75
    evs  0,   0,   0,   2,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIGHTING, PSYCHIC ; type
    db 90 ; catch rate
    db 144 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/medicham/front.dimensions"
    db PURE_POWER, PURE_POWER     ; abilities
    db TELEPATHY    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_HUMAN_LIKE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
