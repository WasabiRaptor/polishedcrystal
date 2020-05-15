
    dw 00412 ;national dex no

    db  40,  29,  45,  36,  29,  45
    evs  0,   0,   0,   0,   0,   1
    ;   hp  atk  def  spd  sat  sdf

    db BUG, BUG ; type
    db 120 ; catch rate
    db 45 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/burmy/front.dimensions"
    db SHED_SKIN, SHED_SKIN     ; abilities
    db OVERCOAT    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_BUG ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
