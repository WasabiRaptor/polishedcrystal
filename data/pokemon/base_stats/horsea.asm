
    dw 00116 ;national dex no

    db  30,  40,  70,  60,  70,  25
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 225 ; catch rate
    db 59 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/horsea/front.dimensions"
    db SWIFT_SWIM, SNIPER     ; abilities
    db DAMP    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_WATER_1, EGG_DRAGON ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
