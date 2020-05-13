
    dw 00327 ;national dex no

    db  60,  60,  60,  60,  60,  60
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 255 ; catch rate
    db 126 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/spinda/front.dimensions"
    db OWN_TEMPO, TANGLED_FEET     ; abilities
    db CONTRARY    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
