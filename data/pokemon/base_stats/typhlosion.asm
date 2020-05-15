
    dw 00157 ;national dex no

    db  78,  84,  78, 100, 109,  85
    evs  0,   0,   0,   0,   3,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, FIRE ; type
    db 45 ; catch rate
    db 240 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/typhlosion/front.dimensions"
    db BLAZE, BLAZE     ; abilities
    db FLASH_FIRE    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
