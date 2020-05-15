
    dw 00204 ;national dex no

    db  50,  65,  90,  15,  35,  35
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, BUG ; type
    db 190 ; catch rate
    db 58 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/pineco/front.dimensions"
    db STURDY, STURDY     ; abilities
    db OVERCOAT    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_BUG ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
