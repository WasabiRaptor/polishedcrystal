
    dw 00046 ;national dex no

    db  35,  70,  55,  25,  45,  55
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, GRASS ; type
    db 190 ; catch rate
    db 57 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/paras/front.dimensions"
    db EFFECT_SPORE, DRY_SKIN     ; abilities
    db DAMP    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_BUG, EGG_GRASS ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
