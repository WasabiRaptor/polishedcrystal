
    dw 00552 ;national dex no

    db  60,  82,  45,  74,  45,  45
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GROUND, DARK ; type
    db 90 ; catch rate
    db 123 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/krokorok/front.dimensions"
    db INTIMIDATE, MOXIE     ; abilities
    db ANGER_POINT    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
