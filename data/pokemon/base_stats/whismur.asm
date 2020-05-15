
    dw 00293 ;national dex no

    db  64,  51,  23,  28,  51,  23
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 190 ; catch rate
    db 48 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/whismur/front.dimensions"
    db SOUNDPROOF, SOUNDPROOF     ; abilities
    db RATTLED    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_MONSTER, EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
