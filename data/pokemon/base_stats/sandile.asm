
    dw 00551 ;national dex no

    db  50,  72,  35,  65,  35,  35
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GROUND, DARK ; type
    db 180 ; catch rate
    db 58 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/sandile/front.dimensions"
    db INTIMIDATE, MOXIE     ; abilities
    db ANGER_POINT    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
