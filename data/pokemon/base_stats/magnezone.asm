
    dw 00462 ;national dex no

    db  70,  70, 115,  60, 130,  90
    evs  0,   0,   0,   0,   3,   0
    ;   hp  atk  def  spd  sat  sdf

    db ELECTRIC, STEEL ; type
    db 30 ; catch rate
    db 241 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/magnezone/front.dimensions"
    db MAGNET_PULL, STURDY     ; abilities
    db ANALYTIC    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_MINERAL ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
