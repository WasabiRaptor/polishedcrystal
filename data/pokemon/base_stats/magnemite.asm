
    dw 00081 ;national dex no

    db  25,  35,  70,  45,  95,  55
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db ELECTRIC, STEEL ; type
    db 190 ; catch rate
    db 65 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/magnemite/front.dimensions"
    db MAGNET_PULL, STURDY     ; abilities
    db ANALYTIC    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_MINERAL ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
