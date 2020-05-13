
    dw 00703 ;national dex no

    db  50,  50, 150,  50,  50, 150
    evs  0,   0,   1,   0,   0,   1
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, FAIRY ; type
    db 60 ; catch rate
    db 100 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/carbink/front.dimensions"
    db CLEAR_BODY, CLEAR_BODY     ; abilities
    db STURDY    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_FAIRY, EGG_MINERAL ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
