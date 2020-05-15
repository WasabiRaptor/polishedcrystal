
    dw 00287 ;national dex no

    db  60,  60,  60,  30,  35,  35
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 255 ; catch rate
    db 56 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/slakoth/front.dimensions"
    db TRUANT, TRUANT     ; abilities
    db TRUANT    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
