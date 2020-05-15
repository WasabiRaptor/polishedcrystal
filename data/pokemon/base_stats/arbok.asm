
    dw 00024 ;national dex no

    db  60,  95,  69,  80,  65,  79
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db POISON, POISON ; type
    db 90 ; catch rate
    db 157 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/arbok/front.dimensions"
    db INTIMIDATE, SHED_SKIN     ; abilities
    db UNNERVE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD, EGG_DRAGON ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
