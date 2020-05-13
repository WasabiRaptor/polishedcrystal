
    dw 00787 ;national dex no

    db  70, 130, 115,  75,  85,  95
    evs  0,   3,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, FAIRY ; type
    db 3 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/tapu_bulu/front.dimensions"
    db GRASSY_SURGE, GRASSY_SURGE     ; abilities
    db TELEPATHY    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
