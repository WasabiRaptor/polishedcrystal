
    dw 00671 ;national dex no

    db  78,  65,  68,  75, 112, 154
    evs  0,   0,   0,   0,   0,   3
    ;   hp  atk  def  spd  sat  sdf

    db FAIRY, FAIRY ; type
    db 45 ; catch rate
    db 248 ; base exp
	dw 0 ; field capabilities
    dn ALL_FEMALE, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/florges/front.dimensions"
    db FLOWER_VEIL, FLOWER_VEIL     ; abilities
    db SYMBIOSIS    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FAIRY ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
