
    dw 00297 ;national dex no

    db 144, 120,  60,  50,  40,  60
    evs  2,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIGHTING, FIGHTING ; type
    db 200 ; catch rate
    db 166 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_25, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/hariyama/front.dimensions"
    db THICK_FAT, GUTS     ; abilities
    db SHEER_FORCE    ; hidden ability
    db GROWTH_FLUCTUATING ; growth rate
    dn EGG_HUMAN_LIKE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
