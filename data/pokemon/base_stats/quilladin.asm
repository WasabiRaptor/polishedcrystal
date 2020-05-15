
    dw 00651 ;national dex no

    db  61,  78,  95,  57,  56,  58
    evs  0,   0,   2,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 45 ; catch rate
    db 142 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/quilladin/front.dimensions"
    db OVERGROW, OVERGROW     ; abilities
    db BULLETPROOF    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
