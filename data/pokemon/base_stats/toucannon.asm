
    dw 00733 ;national dex no

    db  80, 120,  75,  60,  75,  75
    evs  0,   3,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FLYING ; type
    db 45 ; catch rate
    db 218 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/toucannon/front.dimensions"
    db KEEN_EYE, SKILL_LINK     ; abilities
    db SHEER_FORCE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FLYING ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
