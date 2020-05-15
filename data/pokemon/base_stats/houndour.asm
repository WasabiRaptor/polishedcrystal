
    dw 00228 ;national dex no

    db  45,  60,  30,  65,  80,  50
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db DARK, FIRE ; type
    db 120 ; catch rate
    db 66 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/houndour/front.dimensions"
    db EARLY_BIRD, FLASH_FIRE     ; abilities
    db UNNERVE    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
