
    dw 00307 ;national dex no

    db  30,  40,  55,  60,  40,  55
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIGHTING, PSYCHIC ; type
    db 180 ; catch rate
    db 56 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/meditite/front.dimensions"
    db PURE_POWER, PURE_POWER     ; abilities
    db TELEPATHY    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_HUMAN_LIKE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
