
    dw 00079 ;national dex no

    db  90,  65,  65,  15,  40,  40
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, PSYCHIC ; type
    db 190 ; catch rate
    db 63 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/slowpoke/front.dimensions"
    db OBLIVIOUS, OWN_TEMPO     ; abilities
    db REGENERATOR    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_MONSTER, EGG_WATER_1 ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
