
    dw 00325 ;national dex no

    db  60,  25,  35,  60,  70,  80
    evs  0,   0,   0,   0,   0,   1
    ;   hp  atk  def  spd  sat  sdf

    db PSYCHIC, PSYCHIC ; type
    db 255 ; catch rate
    db 66 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/spoink/front.dimensions"
    db THICK_FAT, OWN_TEMPO     ; abilities
    db GLUTTONY    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
