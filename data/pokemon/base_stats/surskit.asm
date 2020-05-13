
    dw 00283 ;national dex no

    db  40,  30,  32,  65,  50,  52
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, WATER ; type
    db 200 ; catch rate
    db 54 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/surskit/front.dimensions"
    db SWIFT_SWIM, SWIFT_SWIM     ; abilities
    db RAIN_DISH    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
