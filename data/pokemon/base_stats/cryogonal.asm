
    dw 00615 ;national dex no

    db  80,  50,  50, 105,  95, 135
    evs  0,   0,   0,   0,   0,   2
    ;   hp  atk  def  spd  sat  sdf

    db ICE, ICE ; type
    db 25 ; catch rate
    db 180 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/cryogonal/front.dimensions"
    db LEVITATE, LEVITATE     ; abilities
    db LEVITATE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_MINERAL ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
