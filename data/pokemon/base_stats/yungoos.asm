
    dw 00734 ;national dex no

    db  48,  70,  30,  45,  30,  30
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 255 ; catch rate
    db 51 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/yungoos/front.dimensions"
    db STAKEOUT, STRONG_JAW     ; abilities
    db ADAPTABILITY    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
