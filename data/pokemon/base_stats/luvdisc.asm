
    dw 00370 ;national dex no

    db  43,  30,  55,  97,  40,  65
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 225 ; catch rate
    db 116 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_75, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/luvdisc/front.dimensions"
    db SWIFT_SWIM, SWIFT_SWIM     ; abilities
    db HYDRATION    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_WATER_2 ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
