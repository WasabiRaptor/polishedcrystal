
    dw 00494 ;national dex no

    db 100, 100, 100, 100, 100, 100
    evs  3,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db PSYCHIC, FIRE ; type
    db 3 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/victini/front.dimensions"
    db VICTORY_STAR, VICTORY_STAR     ; abilities
    db VICTORY_STAR    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
