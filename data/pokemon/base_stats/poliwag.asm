
    dw 00060 ;national dex no

    db  40,  50,  40,  90,  40,  40
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 255 ; catch rate
    db 60 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/poliwag/front.dimensions"
    db WATER_ABSORB, DAMP     ; abilities
    db SWIFT_SWIM    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_WATER_1 ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
