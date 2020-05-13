
    dw 00555 ;national dex no

    db 105, 140,  55,  95,  30,  55
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, FIRE ; type
    db 60 ; catch rate
    db 168 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/darmanitan_standard/front.dimensions"
    db SHEER_FORCE, SHEER_FORCE     ; abilities
    db ZEN_MODE    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
