
    dw 00507 ;national dex no

    db  65,  80,  65,  60,  35,  65
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 120 ; catch rate
    db 130 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/herdier/front.dimensions"
    db INTIMIDATE, SAND_RUSH     ; abilities
    db SCRAPPY    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
