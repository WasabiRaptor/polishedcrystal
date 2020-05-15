
    dw 00501 ;national dex no

    db  55,  55,  45,  45,  63,  45
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 45 ; catch rate
    db 62 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/oshawott/front.dimensions"
    db TORRENT, TORRENT     ; abilities
    db SHELL_ARMOR    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
