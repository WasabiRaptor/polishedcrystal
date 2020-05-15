
    dw 00174 ;national dex no

    db  90,  30,  15,  15,  40,  20
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, FAIRY ; type
    db 170 ; catch rate
    db 42 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_75, 2 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/igglybuff/front.dimensions"
    db CUTE_CHARM, COMPETITIVE     ; abilities
    db FRIEND_GUARD    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
