
    dw 00354 ;national dex no

    db  64, 115,  65,  65,  83,  63
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GHOST, GHOST ; type
    db 45 ; catch rate
    db 159 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/banette/front.dimensions"
    db INSOMNIA, FRISK     ; abilities
    db CURSED_BODY    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_AMORPHOUS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
