
    dw 00166 ;national dex no

    db  55,  35,  50,  85,  55, 110
    evs  0,   0,   0,   0,   0,   2
    ;   hp  atk  def  spd  sat  sdf

    db BUG, FLYING ; type
    db 90 ; catch rate
    db 137 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/ledian/front.dimensions"
    db SWARM, EARLY_BIRD     ; abilities
    db IRON_FIST    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_BUG ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
