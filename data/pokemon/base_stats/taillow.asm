
    dw 00276 ;national dex no

    db  40,  55,  30,  85,  30,  30
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FLYING ; type
    db 200 ; catch rate
    db 54 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/taillow/front.dimensions"
    db GUTS, GUTS     ; abilities
    db SCRAPPY    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FLYING ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
