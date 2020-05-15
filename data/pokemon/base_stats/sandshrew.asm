
    dw 00027 ;national dex no

    db  50,  75,  85,  40,  20,  30
    evs  0,   0,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GROUND, GROUND ; type
    db 255 ; catch rate
    db 60 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/sandshrew/front.dimensions"
    db SAND_VEIL, SAND_VEIL     ; abilities
    db SAND_RUSH    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
