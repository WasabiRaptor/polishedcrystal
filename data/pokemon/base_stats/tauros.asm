
    dw 00128 ;national dex no

    db  75, 100,  95, 110,  40,  70
    evs  0,   1,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 45 ; catch rate
    db 172 ; base exp
	dw 0 ; field capabilities
    dn ALL_MALE, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/tauros/front.dimensions"
    db INTIMIDATE, ANGER_POINT     ; abilities
    db SHEER_FORCE    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
