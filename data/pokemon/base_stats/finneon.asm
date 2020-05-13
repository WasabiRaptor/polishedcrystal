
    dw 00456 ;national dex no

    db  49,  49,  56,  66,  49,  61
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 190 ; catch rate
    db 66 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/finneon/front.dimensions"
    db SWIFT_SWIM, STORM_DRAIN     ; abilities
    db WATER_VEIL    ; hidden ability
    db GROWTH_ERRATIC ; growth rate
    dn EGG_WATER_2 ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
