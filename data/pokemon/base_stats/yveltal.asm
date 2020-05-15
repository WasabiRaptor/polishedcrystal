
    dw 00717 ;national dex no

    db 126, 131,  95,  99, 131,  98
    evs  3,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db DARK, FLYING ; type
    db 45 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/yveltal/front.dimensions"
    db DARK_AURA, DARK_AURA     ; abilities
    db DARK_AURA    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
