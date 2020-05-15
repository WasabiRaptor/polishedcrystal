
    dw 00260 ;national dex no

    db 100, 110,  90,  60,  85,  90
    evs  0,   3,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, GROUND ; type
    db 45 ; catch rate
    db 241 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/swampert/front.dimensions"
    db TORRENT, TORRENT     ; abilities
    db DAMP    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_MONSTER, EGG_WATER_1 ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
