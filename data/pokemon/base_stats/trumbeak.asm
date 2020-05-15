
    dw 00732 ;national dex no

    db  55,  85,  50,  75,  40,  50
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FLYING ; type
    db 120 ; catch rate
    db 124 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/trumbeak/front.dimensions"
    db KEEN_EYE, SKILL_LINK     ; abilities
    db PICKUP    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FLYING ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
