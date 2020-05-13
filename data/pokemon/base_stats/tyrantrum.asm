
    dw 00697 ;national dex no

    db  82, 121, 119,  71,  69,  59
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ROCK, DRAGON ; type
    db 45 ; catch rate
    db 182 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 6 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/tyrantrum/front.dimensions"
    db STRONG_JAW, STRONG_JAW     ; abilities
    db ROCK_HEAD    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_MONSTER, EGG_DRAGON ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
