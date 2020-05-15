
    dw 00212 ;national dex no

    db  70, 130, 100,  65,  55,  80
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, STEEL ; type
    db 25 ; catch rate
    db 175 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/scizor/front.dimensions"
    db SWARM, TECHNICIAN     ; abilities
    db LIGHT_METAL    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_BUG ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
